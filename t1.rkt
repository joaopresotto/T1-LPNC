;**********************************
; Membros do grupo:
;   Gustavo Pires de Moraes
;   João Gabriel Camacho Presotto
;   Thiago Costa Leme Rodrigues
;**********************************

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

;(caadar jabiru-flix) -> "Blade Runner", não to conseguindo acessar o restante
;(define (nome_filme filme)
;	(if (null? filme)
;		(printf "Filme nao cadastrado")
;		(cadr filme)))

;(map (lambda (filme) (nome_filme filme)) jabiru-flix)
