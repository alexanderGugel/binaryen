(module
  (memory 256 256)
  (type $0 (func (param i32)))
  (func $ifs (type $0) (param $x i32)
    (local $y f32)
    (block $block0
      (if
        (i32.const 0)
        (drop
          (i32.const 1)
        )
      )
      (if
        (i32.const 0)
        (drop
          (i32.const 1)
        )
        (drop
          (i32.const 2)
        )
      )
      (if
        (i32.const 4)
        (drop
          (i32.const 5)
        )
        (drop
          (i32.const 6)
        )
      )
      (drop
        (i32.eq
          (if
            (i32.const 4)
            (i32.const 5)
            (i32.const 6)
          )
          (i32.const 177)
        )
      )
    )
  )
)
