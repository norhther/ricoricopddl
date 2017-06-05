(define (domain ricorico)
  (:requirements :adl :typing)
  (:types plato dia tipo - object
         primero segundo - plato)


    (:predicates (es-incompatible ?x - primero ?y - segundo)
      (asignado-dia ?x - dia ?z - primero ?y - segundo) (dia-completo ?x - dia)
    )

  (:action asignar-platos-dia
    :parameters (?x - primero ?y - segundo ?z - dia)
    :precondition (and (not (dia-completo ?z)) (not (es-incompatible ?x ?y)))
    :effect (and (dia-completo ?z) (asignado-dia ?z ?x ?y))
  )


)
