;; From https://www.theguardian.com/science/2021/jun/14/did-you-solve-it-ace-of-spades
;; Unintuitively, they are all the same likelihood
;; $ nix-shell -p mitscheme --run "scheme --quiet < deck-of-cards.scm"
;; red: 1/26
;; clubs: 1/26
;; face: 1/26
;; random guess: 1/26

(display "red: ")

(display
 ;; Final probability of guessing the correct card is the sum of:
 (+
  (*
   ;; - the probability that the card is red
   26/52
   ;;   multiplied by the probability of guessing the correct red card
   1/26)
  (*
   ;; - the probability that the card is not red
   26/52
   ;;   multiplied by the probability of guessing the correct not-red (black) card.
   1/26)))
(newline)

(display "clubs: ")
(display
 ;; Final probability of guessing the correct card is the sum of:
 (+
  (*
   ;; - the probability that the card is a club
   13/52
   ;;   multiplied by the probability of guessing the correct club card
   1/13)
  (*
   ;; - the probability that the card is not a club
   39/52
   ;;   multiplied by the probability of guessing the correct not-club card.
   1/39)))
(newline)

(display "face: ")
(display
 ;; Final probability of guessing the correct card is the sum of:
 (+
  (*
   ;; - the probability that the card is a face
   12/52
   ;;   multiplied by the probability of guessing the correct face card
   1/12)
  (*
   ;; - the probability that the card is not a face
   40/52
   ;;   multiplied by the probability of guessing the correct not-face card.
   1/40)))
(newline)

(display "random guess: ")
 ;; Final probability of guessing the correct card is the sum of:
(display
 (+
  ;;  - getting lucky on the first question!
  1/52
  (*
   ;; - not getting lucky on the first question
   51/52
   ;;   but getting lucky on the guess
   1/51)))
(newline)
