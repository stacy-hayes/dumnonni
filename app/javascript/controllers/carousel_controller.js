import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["track"]

    next() {
        this.scrollByPage(1)
    }

    previous() {
        this.scrollByPage(-1)
    }

    scrollByPage(direction) {
        const scrollAmount = this.pageWidth()
        if (scrollAmount === 0) return

        if (direction > 0 && this.isAtEnd()) {
            this.scrollToStart()
            return
        }

        if (direction < 0 && this.isAtStart()) {
            this.scrollToEnd()
            return
        }

        this.trackTarget.scrollBy({
            left: direction * scrollAmount,
            behavior: "smooth"
        })
    }

    pageWidth() {
        const slide = this.trackTarget.querySelector(".carousel-slide-content")
        if (!slide) return 0

        const gap = parseFloat(getComputedStyle(this.trackTarget).columnGap) || 0
        const slideWidth = slide.getBoundingClientRect().width
        const visibleSlides = this.visibleSlideCount()

        return (slideWidth + gap) * visibleSlides
    }

    visibleSlideCount() {
        if (window.matchMedia("(min-width: 1024px)").matches) return 5
        if (window.matchMedia("(min-width: 640px)").matches) return 2

        return 1
    }

    isAtStart() {
        return this.trackTarget.scrollLeft <= 0
    }

    isAtEnd() {
        const tolerance = 4
        const currentPosition = this.trackTarget.scrollLeft + this.trackTarget.clientWidth
        const maximumPosition = this.trackTarget.scrollWidth

        return currentPosition >= maximumPosition - tolerance
    }

    scrollToStart() {
        this.trackTarget.scrollTo({
            left: 0,
            behavior: "smooth"
        })
    }

    scrollToEnd() {
        this.trackTarget.scrollTo({
            left: this.trackTarget.scrollWidth,
            behavior: "smooth"
        })
    }
}