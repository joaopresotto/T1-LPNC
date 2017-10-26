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

; Para rodar no terminal
; tira o #lang racket do inicio
; racket -f <nome-do-programa>.rkt -i
; #lang racket

(define jabiru-flix '( ("Blade Runner" "Sci-Fi" "Ridley Scott" ("Harrison Ford" "Rutger Hauer" "Sean Young") 1982 117)

           ("Blade Runner 2049" "Sci-Fi" "Denis Villeneuve" ("Harrison Ford" "Ryan Gosling" "Ana de Armas") 2017 164)

		       ("Raiders of the Lost Ark" "Aventura" "Steven Spielberg" ("Harrison Ford" "Karen Allen" "Paul Freeman") 1981 115)

		       ("Pulp Fiction" "Crime"  "Quentin Tarantino" ("John Travolta" "Uma Thurman" "Samuel L. Jackson") 1994 154)

		       ("Terminator 2" "Sci-Fi" "James Cameron" ("Arnold Schwarzenegger" "Linda Hamilton" "Edward Furlong") 1991 137)

		       ("E.T. the Extra-Terrestrial" "Sci-Fi" "Steven Spielberg" ("Henry Thomas" "Drew Barrymore" "Peter Coyote") 1982 115)

		       ("The Godfather" "Drama" "Francis Ford Coppola" ("Marlon Brando" "Al Pacino" "James Caan") 1972 175)

		       ("Scarface" "Crime" "Brian de Palma" ("Al Pacino" "Michelle Pfeiffer" "Steven Bauer") 1983 170)

		       ("The Others" "Mistery" "Alejandro Amenabar" ("Nicole Kidman" "Christopher Eccleston" "Fionnula Flanagan") 2001 101)

		       ("1984" "Drama" "Michael Anderson" ("Edmond O'Brien" "Michael Redgrave" "Jan Sterling") 1956  90)

		       ("Gladiator" "Ação" "Ridley Scott" ("Russell Crowe" "Joaquin Phoenix" "Connie Nielsen") 2000 155)

		       ("Titanic" "Drama" "James Cameron" ("Leonardo DiCaprio" "Kate Winslet" "Billy Zane") 1997 194)

		       ("Fight Club" "Drama" "David Fincher" ("Brad Pitt" "Edward Norton" "Meat Loaf") 1999 139)

		       ("Matrix" "Sci-Fi" "Wachowskis" ("Keanu Reeves" "Laurence Fishburne" "Carrie-Anne Moss") 1999 136)

		       ("Dumbo" "Animation" "Samuel Armstrong" ("Sterling Holloway" "Edward Brophy" "James Baskett") 1941 64)

		       ("The Lion King" "Animation" "Roger Allers" ("Matthew Broderick" "Jeremy Irons" "James Earl Jones") 1994 88)

		       ("Tarzan" "Animation" "Chris Buck" ("Tony Goldwyn" "Minnie Driver" "Brian Blessed") 1999 88)

		       ("Se7en" "Mystery" "David Fincher" ("Morgan Freeman" "Brad Pitt" "Kevin Spacey") 1995  127)

		       ("Fargo" "Thriller" "Coen Brothers" ("William H. Macy" "Frances McDormand" "Steve Buscemi") 1996 98)

		       ("Predestination" "Sci-Fi" "The Spierig Brothers" ("Ethan Hawke" "Sarah Snook" "Noah Taylor") 2014 97)

		       ("Arrival" "Sci-Fi" "Denis Villeneuve" ("Amy Adams" "Jeremy Renner" "Forest Whitaker") 2016 116)

		       ("Hidden Figures" "Drama" "Theodore Melfi" ("Taraji P. Henson" "Octavia Spencer" "Janelle Monae") 2016 127)

		       ("La La Land" "Music" "Damien Chazelle" ("Ryan Gosling" "Emma Stone" "Rosemarie DeWitt") 2016 128)

		       ("Star Wars: Episode V - The Empire Strikes Back" "Fantasy" "Irving Kershner" ("Mark Hamill" "Harrison Ford" "Carrie Fisher") 1980 124)

		       ("The Imitation Game" "Morten Tyldum" "Drama" ("Benedict Cumberbatch" "Keira Knightley" "Matthew Goode") 2014 114)

		       ("Memento" "Cristopher Nolan" "Thriller" ("Guy Pearce" "Carrie-Anne Moss" "Joe Pantoliano") 2000 113)

		       ("Inception" "Cristopher Nolan" "Sci-Fi" ("Leonardo DiCaprio" "Joseph Gordon-Levitt" "Ellen Page") 2010 148)

		       ("Bingo: O Rei das Manhãs" "Daniel Rezende" "Drama" ("Vladimir Brichta" "Emanuelle Araujo" "Raul Barreto") 2017 113)

		       ("Tropa de Elite" "José Padilha" "Ação" ("Wagner Moura" "André Ramiro" "Caio Junqueira") 2007 115)

		       ("It" "Andy Muschietti" "Horror" ("Bill Skarsgard" "Jaeden Lieberher" "Finn Wolfhard") 2017 135)
))

(define (nome_filme filme)
		(car filme))

(define (genero_filme filme)
    (cadr filme))

(define (diretor_filme filme)
  	(caddr filme))

(define (atores_filme filme)
  	(cadddr filme))

(define (ano_filme filme)
  	(cadddr (cdr filme)))

(define (duracao_filme filme)
  	(cadddr (cddr filme)))

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

(define (filtra_genero genero acervo)
  (map (lambda (filme) (if (equal? genero (genero_filme filme)) filme '())) acervo))

(define (filtra_diretor diretor acervo)
  (map (lambda (filme) (if (equal? diretor (diretor_filme filme)) filme '())) acervo))

(define (filtra_ano ano acervo)
  (map (lambda (filme) (if (equal? ano (ano_filme filme)) filme '())) acervo))

(define (filtra_duracao duracao_min duracao_max acervo)
  (map (lambda (filme) (if (and (>= (duracao_filme filme) duracao_min) (<= (duracao_filme filme) duracao_max)) filme '())) acervo))

(define (particionar l acu1 acu2)
         (if (null? l)
             (cons (reverse acu1) (reverse acu2))
             (if (null? (cdr l))
                 (cons (reverse (cons (car l) acu1)) (reverse acu2) )
                 (particionar (cdr (cdr l)) (cons (car l) acu1) (cons (car (cdr l)) acu2) )
             )
         )
)

(define (misturar_nome l1 l2)
       (if (null? l1)
           l2
           (if (null? l2)
               l1
               (if (string<?  (nome_filme (car l1)) (nome_filme (car l2)) )
                   (cons (car l1) (misturar_nome (cdr l1) l2) )
                   (cons (car l2) (misturar_nome l1 (cdr l2)) )
               )
           )
       )
)

(define (ordena_nome acervo)
        (if (null? acervo)
             acervo
            (if (null? (cdr acervo))
                acervo
                (let* ( [temp (particionar acervo '() '() )] [l1 (car temp)] [l2 (cdr temp)] )
                      (misturar_nome (ordena_nome l1) (ordena_nome l2) )
                 )
            )
        )
)

(define (misturar_ano l1 l2)
       (if (null? l1)
           l2
           (if (null? l2)
               l1
               (if (<  (ano_filme (car l1)) (ano_filme (car l2)) )
                   (cons (car l1) (misturar_ano (cdr l1) l2) )
                   (cons (car l2) (misturar_ano l1 (cdr l2)) )
               )
           )
       )
)

(define (ordena_ano acervo)
        (if (null? acervo)
             acervo
            (if (null? (cdr acervo))
                acervo
                (let* ( [temp (particionar acervo '() '() )] [l1 (car temp)] [l2 (cdr temp)] )
                      (misturar_ano (ordena_ano l1) (ordena_ano l2) )
                 )
            )
        )
)

(define (ordena_duracao acervo)
        (if (null? acervo)
          acervo
          (if (null? (cdr acervo))
            acervo
            (let* ( [temp (particionar acervo '() '() )] [l1 (car temp)] [l2 (cdr temp)] )
                  (misturar_duracao (ordena_duracao l1) (ordena_duracao l2) )
           ))))

 (define (misturar_duracao l1 l2)
        (if (null? l1)
            l2
            (if (null? l2)
                l1
                (if (<  (duracao_filme (car l1)) (duracao_filme (car l2)) )
                    (cons (car l1) (misturar_duracao (cdr l1) l2) )
                    (cons (car l2) (misturar_duracao l1 (cdr l2)) )
                )
            )
        )
 )
