(define (domain ricorico)
  (:requirements :adl :typing)
  (:types plato dia tipo - object
         primero segundo - plato)

    (:predicates (es-incompatible ?x - primero ?y - segundo)
      (asignado-dia ?x - dia ?z - primero ?y - segundo) (dia-completo ?x - dia)
      (esta-usado ?x - plato) (es-tipo ?x - plato ?y - tipo) (dia-pegado ?x - dia ?y - dia)
      (dia-con-tipo ?x - dia ?y - tipo)
    )

  (:action asignar-platos-dia
    :parameters (?z - dia ?x - primero ?tipop - tipo ?y - segundo ?tiposeg - tipo)
    :precondition (and (not (dia-completo ?z)) (not (es-incompatible ?x ?y)) (not (esta-usado ?x)) (not (esta-usado ?y))
    (es-tipo ?x ?tipop) (es-tipo ?y ?tiposeg)

    (not (exists (?dia - dia) (and (dia-pegado ?dia ?z) (or (dia-con-tipo ?dia ?tipop) (dia-con-tipo ?dia ?tiposeg) ) ) )
    ) )

    :effect (and (dia-completo ?z) (asignado-dia ?z ?x ?y) (esta-usado ?x) (esta-usado ?y) (dia-con-tipo ?z ?tipop)
    (dia-con-tipo ?z ?tiposeg)
    )

  )

)
