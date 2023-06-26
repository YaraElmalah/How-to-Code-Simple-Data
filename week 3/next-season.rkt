;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname next-season) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;;Season is one of:
;; - "spring"
;; - "summer"
;; - "fall"
;; - "winter"
;; intrep. the four seasons of the year
;; <examples are redundant for enumerations>

#;
(define (fn-for-season s)
  (cond [(string=? "spring" s) (...)]
        [(string=? "summer" s) (...)]
        [(string=? "fall" s) (...)]
        [(string=? "winter" s) (...)] ))

;;Template Rules used:
;; - one of: 4 cases
;; - atomic distinct: "spring"
;; - atomic distinct: "summer"
;; - atomic distinct: "fall"
;; - atomic distinct: "winter"

;; season -> season
;; get next season that come after given season
(check-expect (next-season "spring") "summer")
(check-expect (next-season "summer") "fall")
(check-expect (next-season "fall") "winter")
(check-expect (next-season "winter") "spring")

(define (next-season s) (cond [(string=? "spring" s) "summer"]
        [(string=? "summer" s) "fall"]
        [(string=? "fall" s) "winter"]
        [(string=? "winter" s) "spring"] ));