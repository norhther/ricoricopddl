(define (problem ricoricoexperimental)
(:domain ricorico)
(:objects

  Fabada Arroz Lomo DobleconQueso Ensalada BerenjenasSalteadas Rollito - primero
  Ceviche DimSum Pollo Jamon Pato - segundo
  Lunes Martes Miercoles Jueves Viernes - dia
  Cuchara Sopa Carne Pescado Verdura - tipo

  )
  (:init

    (es-tipo Fabada Cuchara) (es-tipo Arroz Cuchara) (es-tipo Lomo Carne)
    (es-tipo DimSum Pescado)
    (es-tipo DobleconQueso Carne) (es-tipo Ensalada Verdura)
    (es-tipo BerenjenasSalteadas Verdura) (es-tipo Rollito Carne)
    (es-tipo Ceviche Pescado)
    (es-tipo Pollo Carne) (es-tipo Jamon Carne) (es-tipo Pato Carne)

    (dia-pegado Lunes Martes) (dia-pegado Martes Lunes) (dia-pegado Martes Miercoles)
    (dia-pegado Miercoles Martes) (dia-pegado Miercoles Jueves) (dia-pegado Jueves Miercoles)
    (dia-pegado Jueves Viernes) (dia-pegado Viernes Jueves)
    (plato-del-dia Fabada Lunes) (plato-del-dia Pato Lunes)


  )

    (:goal (forall (?c - dia) (dia-completo ?c)))
)
