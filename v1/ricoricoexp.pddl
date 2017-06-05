(define (problem ricoricoexperimental)
(:domain ricorico)
(:objects

  Fabada Arroz Lomo DobleconQueso Ensalada BerenjenasSalteadas Rollito - primero
  Ceviche DimSum BollicaoHandmade Pollo Jamon Pato - segundo
  Lunes Martes Miercoes Jueves Viernes - dia
  )

  (:init
    (es-incompatible Fabada Ceviche) (es-incompatible Fabada DimSum)
  )

    (:goal (forall (?c - dia) (dia-completo ?c)))
)
