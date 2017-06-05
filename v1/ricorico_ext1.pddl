(define (domain ricorico)
  (:requirements :adl :typing)
  (:types plato dia tipo - object
         primero segundo - plato)


    (:predicates (es-incompatible ?x - primero ?y - segundo)
      (asignado-dia ?x - dia ?z - primero ?y - segundo) (dia-completo ?x - dia)
      (esta-usado ?x - plato) ;(es-tipo ?x - plato ?y - tipo) (dia-despues ?x - dia ?y - dia)
      ;(dia-con-tipo ?x - dia ?y - tipo)
    )

  (:action asignar-platos-dia
    :parameters (?x - primero ?y - segundo ?z - dia)
    :precondition (and (not (dia-completo ?z)) (not (es-incompatible ?x ?y)) (not (esta-usado ?x)) (not (esta-usado ?y))
     )
    :effect (and (dia-completo ?z) (asignado-dia ?z ?x ?y) (esta-usado ?x) (esta-usado ?y))
  )


)
