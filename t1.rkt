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

(define jabiru-flix '( '("Blade Runner" "Ficção Científica" "Ridley Scott" '("Harrison Ford" "Rutger Hauer" "Sean Young" "Edward James Olmos" "Daryl Hannah") 1982 "117 min")
                       '("teste1")
                       '("teste2")
                       ))

(define (nome_filme filme)
	(if (null? filme)
		(printf "Filme nao cadastrado")
		(printf "Nome: ~a\n" (caadr filme))))

(define (nomes_filmes)
  (begin (printf "******************\n") (printf " Nomes dos filmes\n") (printf "******************\n")
    (map (lambda (filme) (nome_filme filme)) jabiru-flix)))

(define (genero_filme filme)
      (if (null? filme)
        	(printf "Filme nao cadastrado")
        	(printf "Genero: ~a\n" (cadr (cadar filme)) )
      )
)

(define (diretor_filme filme)
      (if (null? filme)
        	(printf "Filme nao cadastrado")
        	(printf "Diretor: ~a\n" (caddr (cadar filme)) )
      )
)

(define (atores_filme filme)
      (if (null? filme)
        	(printf "Filme nao cadastrado")
        	(printf "Atores: ~a\n" (cadddr (cadar filme)) )
      )
)

(define (ano_filme filme)
      (if (null? filme)
        	(printf "Filme nao cadastrado")
        	(printf "Ano: ~a\n" (car (cddddr (cadar filme))) )
      )
)

(define (duracao_filme filme)
      (if (null? filme)
        	(printf "Filme nao cadastrado")
        	(printf "Duração: ~a\n" (cadr (cddddr (cadar filme))) )
      )
)
