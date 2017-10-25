#lang racket
;*********************************************;
;  Membros do grupo:                          ;
;      Gustavo Pires de Moraes                ;
;      João Gabriel Camacho Presotto          ;
;      Thiago Costa Leme Rodrigues            ;
;*********************************************;

;*********************************************;
; O acervo de filmes é organizado na forma de ;
; uma lista de listas, com cada elemento da   ;
; lista contendo informações sobre o título   ;
; como diretor, duração, tema, etc.           ;
;*********************************************;

(define jabiru-flix '( ("Blade Runner" "Ficção Científica" "Ridley Scott" ("Harrison Ford" "Rutger Hauer" "Sean Young" "Edward James Olmos" "Daryl Hannah") 1982 "117 min")
                       ("Blade Runner2" "Ficção Científica2" "Ridley Scott2" ("Harrison Ford2" "Rutger Hauer" "Sean Young" "Edward James Olmos" "Daryl Hannah") 1983 "117 min2")
                       ("Blade Runner3" "Ficção Científica3" "Ridley Scott3" ("Harrison Ford3" "Rutger Hauer" "Sean Young" "Edward James Olmos" "Daryl Hannah") 1984 "117 min3")
                       ))

(define (nome_filme filme)
	(if (null? filme)
		'() ;(printf "Filme nao cadastrado")
		(car filme) ));(printf "Nome: ~a\n" (caadr filme))))

(define (genero_filme filme)
      (if (null? filme)
        	'() ;(printf "Filme nao cadastrado")
        	(cadr filme) ;(printf "Genero: ~a\n" (cadr (cadar filme)) )
      )
)

(define (diretor_filme filme)
      (if (null? filme)
        	'() ;(printf "Filme nao cadastrado")
        	(caddr filme) ;(printf "Diretor: ~a\n" (caddr (cadar filme)) )
      )
)

(define (atores_filme filme)
      (if (null? filme)
        	'() ;(printf "Filme nao cadastrado")
        	(cadddr filme) ;(printf "Atores: ~a\n" (cadddr (cadar filme)) )
      )
)

(define (ano_filme filme)
      (if (null? filme)
        	'() ;(printf "Filme nao cadastrado")
        	(cadddr (cdr filme)) ;(printf "Ano: ~a\n" (car (cddddr (cadar filme))) )
      )
)

(define (duracao_filme filme)
      (if (null? filme)
        	'() ;(printf "Filme nao cadastrado")
        	(cadddr (cddr filme));(printf "Duração: ~a\n" (cadr (cddddr (cadar filme))) )
      )
)

(define (nome_filmes)
  (begin (printf "Nomes dos filmes: ")
    (map (lambda (filme) (nome_filme filme)) jabiru-flix)))

(define (genero_filmes)
  (begin (printf "Generos dos filmes: ")
    (map (lambda (filme) (genero_filme filme)) jabiru-flix)))

(define (diretor_filmes)
  (begin (printf "Diretores dos filmes: ")
    (map (lambda (filme) (diretor_filme filme)) jabiru-flix)))

(define (ator_filmes)
  (begin (printf "Atores dos filmes: \n")
    (map (lambda (filme) (atores_filme filme)) jabiru-flix)))

(define (ano_filmes)
  (begin (printf "Ano dos filmes: \n")
    (map (lambda (filme) (ano_filme filme)) jabiru-flix)))

(define (duracao_filmes)
  (begin (printf "Duracao dos filmes: \n")
    (map (lambda (filme) (duracao_filme filme)) jabiru-flix)))
