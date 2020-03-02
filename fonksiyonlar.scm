#lang racket
;;; toplam fonksiyonu 1 ile n arasındaki sayıların toplamını hesapar
(define toplam
  (lambda (n) (
               if (= n 1)
                  1
                  (+ n (toplam (- n 1)))
                  )
                  
    )
  )
;;; kotoplam fonksiyonu toplam fonksiyonunun kuyruk özyineli halidir
(define kotoplam(lambda (n sonuc) (if (= n 1) (+ 1 sonuc) (kotoplam (- n 1) (+ n sonuc) ) )))
;;;Örnek kullanım
(toplam 10)
(kotoplam 10 0)

;;; collatz fonksiyonu verilen sayının collatz sanısına göre 1'e kaç adımda ulaştığını bulur
(define collatz (lambda (n) (if (= n 1) 1 (+ 1 (if
                                                (= (remainder n 2) 0)
                                                (collatz (/ n 2))
                                                (collatz (+ 1 (* 3 n)))
                                                )
                                             )
                                )
                  )
  )
;;;Örnek kullanım
(collatz 23)

;;; square-list fonksiyonu parametre olarak gönderilen listedeki elemanların karesini alıp geriye liste olarak döndürür
(define square-list
  (lambda (L) (
               if (null? L)
                  '()
                  (cons (* (car L) (car L))
                        (square-list (cdr L))
                        )
                  )
    )
  )
;;; Örnek kullanım
(square-list '(1 3 5 7))

;;; liste-toplam fonksiyonu parametre olarak verilen listedeki elemanların toplamını hesaplar
(define liste-toplam (lambda (L) (if (null? L) 0 (+ (car L) (liste-toplam (cdr L))))))
;;; Örnek kullanım
(liste-toplam '(1 2 3 4 5))

(define make-double (lambda (f) (lambda (x) (f x x))))
(define square (make-double *))
(define double (make-double +))
