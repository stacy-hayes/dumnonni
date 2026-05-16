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
        const card = this.trackTarget.querySelector(".carousel-card")
        if (!card) return

        const gap = parseFloat(getComputedStyle(this.trackTarget).columnGap) || 0
        const cardWidth = card.getBoundingClientRect().width
        const visibleCards = this.visibleCardCount()
        const scrollAmount = (cardWidth + gap) * visibleCards

        this.trackTarget.scrollBy({
            left: direction * scrollAmount,
            behavior: "smooth"
        })
    }

    visibleCardCount() {
        if (window.matchMedia("(min-width: 1024px)").matches) return 5
        if (window.matchMedia("(min-width: 640px)").matches) return 2

        return 1
    }
}