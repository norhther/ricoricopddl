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

    (= (calorias Fabada) 1000) (= (calorias Arroz) 500) (= (calorias Lomo) 500)
    (= (calorias DimSum) 500) (= (calorias DobleconQueso) 500) (= (calorias Ensalada) 500)
    (= (calorias BerenjenasSalteadas) 500) (= (calorias Rollito) 500)
    (= (calorias Ceviche) 500) (= (calorias Pollo) 500) (= (calorias Jamon) 500)
    (= (calorias Pato) 500)
    
  )

    (:goal (forall (?c - dia) (dia-completo ?c)))
)
