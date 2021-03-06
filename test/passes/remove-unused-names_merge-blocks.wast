(module
  (memory 256 256)
  (type $i (func (param i32)))
  (type $ii (func (param i32 i32)))
  (type $iii (func (param i32 i32 i32)))
  (type $3 (func))
  (table $call-i)
  (func $call-i (type $i) (param $0 i32)
    (nop)
  )
  (func $call-ii (type $ii) (param $0 i32) (param $1 i32)
    (nop)
  )
  (func $call-iii (type $iii) (param $0 i32) (param $1 i32) (param $2 i32)
    (nop)
  )
  (func $b0-yes (type $i) (param $i1 i32)
    (block $topmost
      (block $block0
        (drop
          (i32.const 10)
        )
      )
    )
  )
  (func $b0-no (type $i) (param $i1 i32)
    (block $topmost
      (block $block0
        (br $block0)
      )
      (br $topmost)
    )
  )
  (func $b0-br-but-ok (type $i) (param $i1 i32)
    (block $topmost
      (block $block0
        (br $topmost)
      )
    )
  )
  (func $b1-yes (type $i) (param $i1 i32)
    (block $topmost
      (block $block0
        (block $block1
          (drop
            (i32.const 10)
          )
        )
      )
    )
  )
  (func $b2-yes (type $i) (param $i1 i32)
    (block $topmost
      (drop
        (i32.const 5)
      )
      (block $block0
        (drop
          (i32.const 10)
        )
      )
      (drop
        (i32.const 15)
      )
    )
  )
  (func $b3-yes (type $i) (param $i1 i32)
    (block $topmost
      (drop
        (i32.const 3)
      )
      (block $block0
        (drop
          (i32.const 6)
        )
        (block $block1
          (drop
            (i32.const 10)
          )
        )
        (drop
          (i32.const 15)
        )
      )
      (drop
        (i32.const 20)
      )
    )
  )
  (func $b4 (type $i) (param $i1 i32)
    (block $topmost
      (block $inner
        (drop
          (i32.const 10)
        )
        (br $inner)
      )
    )
  )
  (func $b5 (type $i) (param $i1 i32)
    (block $topmost
      (block $middle
        (block $inner
          (drop
            (i32.const 10)
          )
          (br $inner)
        )
        (br $middle)
      )
    )
  )
  (func $b6 (type $i) (param $i1 i32)
    (block $topmost
      (drop
        (i32.const 5)
      )
      (block $inner
        (drop
          (i32.const 10)
        )
        (br $inner)
      )
      (drop
        (i32.const 15)
      )
    )
  )
  (func $b7 (type $i) (param $i1 i32)
    (block $topmost
      (drop
        (i32.const 3)
      )
      (block $middle
        (drop
          (i32.const 6)
        )
        (block $inner
          (drop
            (i32.const 10)
          )
          (br $inner)
        )
        (drop
          (i32.const 15)
        )
        (br $middle)
      )
      (drop
        (i32.const 20)
      )
    )
  )
  (func $unary (type $3)
    (local $x i32)
    (drop
      (i32.eqz
        (block $block0
          (i32.const 10)
        )
      )
    )
    (drop
      (i32.eqz
        (block $block1
          (drop
            (i32.const 10)
          )
          (i32.const 20)
        )
      )
    )
    (drop
      (i32.eqz
        (block $block2
          (drop
            (i32.const 10)
          )
          (drop
            (i32.const 20)
          )
          (i32.const 30)
        )
      )
    )
    (set_local $x
      (block $block3
        (drop
          (i32.const 10)
        )
        (i32.const 20)
      )
    )
    (drop
      (i32.load
        (block $block4
          (drop
            (i32.const 10)
          )
          (i32.const 20)
        )
      )
    )
    (return
      (block $block5
        (drop
          (i32.const 10)
        )
        (unreachable)
      )
    )
  )
  (func $binary (type $3)
    (drop
      (i32.add
        (block $block0
          (i32.const 10)
        )
        (i32.const 20)
      )
    )
    (drop
      (i32.add
        (block $block1
          (drop
            (i32.const 10)
          )
          (i32.const 20)
        )
        (i32.const 30)
      )
    )
    (drop
      (i32.add
        (block $block2
          (drop
            (i32.const 10)
          )
          (drop
            (i32.const 20)
          )
          (i32.const 30)
        )
        (i32.const 40)
      )
    )
    (drop
      (i32.add
        (i32.const 10)
        (block $block3
          (i32.const 20)
        )
      )
    )
    (drop
      (i32.add
        (i32.const 10)
        (block $block4
          (drop
            (i32.const 20)
          )
          (i32.const 30)
        )
      )
    )
    (drop
      (i32.add
        (i32.const 10)
        (block $block5
          (drop
            (i32.const 20)
          )
          (drop
            (i32.const 30)
          )
          (i32.const 40)
        )
      )
    )
    (drop
      (i32.add
        (block $block6
          (i32.const 10)
        )
        (block $block7
          (i32.const 20)
        )
      )
    )
    (drop
      (i32.add
        (block $block8
          (drop
            (i32.const 10)
          )
          (i32.const 20)
        )
        (block $block9
          (drop
            (i32.const 30)
          )
          (i32.const 40)
        )
      )
    )
    (drop
      (i32.add
        (block $block10
          (drop
            (i32.const 10)
          )
          (drop
            (i32.const 20)
          )
          (i32.const 30)
        )
        (block $block11
          (drop
            (i32.const 40)
          )
          (drop
            (i32.const 50)
          )
          (i32.const 60)
        )
      )
    )
    (i32.store
      (i32.const 10)
      (block $block12
        (drop
          (i32.const 20)
        )
        (i32.const 30)
      )
    )
    (i32.store
      (block $block13
        (drop
          (i32.const 10)
        )
        (i32.const 20)
      )
      (i32.const 30)
    )
    (drop
      (i32.add
        (unreachable)
        (block $block14
          (drop
            (i32.const 10)
          )
          (i32.const 20)
        )
      )
    )
    (drop
      (i32.add
        (block $block15
          (unreachable)
          (i32.const 10)
        )
        (block $block16
          (drop
            (i32.const 20)
          )
          (i32.const 30)
        )
      )
    )
  )
  (func $trinary (type $3)
    (drop
      (select
        (block $block0
          (drop
            (i32.const 10)
          )
          (i32.const 20)
        )
        (block $block1
          (drop
            (i32.const 30)
          )
          (i32.const 40)
        )
        (block $block2
          (drop
            (i32.const 50)
          )
          (i32.const 60)
        )
      )
    )
    (drop
      (select
        (block $block3
          (i32.const 10)
        )
        (block $block4
          (drop
            (i32.const 20)
          )
          (i32.const 30)
        )
        (block $block5
          (drop
            (i32.const 40)
          )
          (i32.const 50)
        )
      )
    )
    (drop
      (select
        (block $block6
          (drop
            (i32.const 10)
          )
          (i32.const 20)
        )
        (block $block7
          (i32.const 30)
        )
        (block $block8
          (drop
            (i32.const 40)
          )
          (i32.const 50)
        )
      )
    )
    (drop
      (select
        (block $block9
          (drop
            (i32.const 10)
          )
          (i32.const 20)
        )
        (block $block10
          (drop
            (i32.const 30)
          )
          (i32.const 40)
        )
        (block $block11
          (i32.const 50)
        )
      )
    )
    (drop
      (select
        (block $block12
          (i32.const 10)
        )
        (block $block13
          (i32.const 20)
        )
        (block $block14
          (drop
            (i32.const 30)
          )
          (i32.const 40)
        )
      )
    )
    (drop
      (select
        (block $block15
          (i32.const 10)
        )
        (block $block16
          (drop
            (i32.const 20)
          )
          (i32.const 30)
        )
        (block $block17
          (i32.const 40)
        )
      )
    )
    (drop
      (select
        (block $block18
          (drop
            (i32.const 10)
          )
          (i32.const 20)
        )
        (block $block19
          (i32.const 30)
        )
        (block $block20
          (i32.const 40)
        )
      )
    )
    (drop
      (select
        (block $block21
          (unreachable)
          (i32.const 20)
        )
        (block $block22
          (drop
            (i32.const 30)
          )
          (i32.const 40)
        )
        (block $block23
          (drop
            (i32.const 50)
          )
          (i32.const 60)
        )
      )
    )
    (drop
      (select
        (block $block24
          (drop
            (i32.const 10)
          )
          (unreachable)
        )
        (block $block25
          (drop
            (i32.const 30)
          )
          (i32.const 40)
        )
        (block $block26
          (drop
            (i32.const 50)
          )
          (i32.const 60)
        )
      )
    )
    (drop
      (select
        (block $block27
          (drop
            (i32.const 10)
          )
          (i32.const 20)
        )
        (block $block28
          (unreachable)
          (i32.const 40)
        )
        (block $block29
          (drop
            (i32.const 50)
          )
          (i32.const 60)
        )
      )
    )
    (drop
      (select
        (block $block30
          (drop
            (i32.const 10)
          )
          (i32.const 20)
        )
        (block $block31
          (drop
            (i32.const 30)
          )
          (unreachable)
        )
        (block $block32
          (drop
            (i32.const 50)
          )
          (i32.const 60)
        )
      )
    )
    (drop
      (select
        (block $block33
          (drop
            (i32.const 10)
          )
          (i32.const 20)
        )
        (block $block34
          (drop
            (i32.const 30)
          )
          (i32.const 40)
        )
        (block $block35
          (unreachable)
          (i32.const 60)
        )
      )
    )
    (drop
      (select
        (block $block36
          (drop
            (i32.const 10)
          )
          (i32.const 20)
        )
        (block $block37
          (drop
            (i32.const 30)
          )
          (i32.const 40)
        )
        (block $block38
          (drop
            (i32.const 50)
          )
          (unreachable)
        )
      )
    )
  )
  (func $breaks (type $3)
    (block $out
      (block
        (drop
          (block $block0
            (drop
              (i32.const 10)
            )
            (i32.const 20)
          )
        )
        (br $out)
      )
      (br_if $out
        (block $block1
          (drop
            (i32.const 10)
          )
          (i32.const 20)
        )
      )
      (block
        (drop
          (block $block2
            (drop
              (i32.const 10)
            )
            (i32.const 20)
          )
        )
        (br_if $out
          (block $block3
            (drop
              (i32.const 30)
            )
            (i32.const 40)
          )
        )
      )
      (br_table $out $out
        (block $block4
          (drop
            (i32.const 10)
          )
          (i32.const 20)
        )
      )
      (drop
        (block $out2
          (br_table $out2 $out2
            (block $block5
              (drop
                (i32.const 10)
              )
              (i32.const 20)
            )
            (block $block6
              (drop
                (i32.const 30)
              )
              (i32.const 40)
            )
          )
        )
      )
      (unreachable)
    )
  )
  (func $calls (type $3)
    (call $call-i
      (block $block0
        (i32.const 10)
      )
    )
    (call $call-i
      (block $block1
        (drop
          (i32.const 10)
        )
        (i32.const 20)
      )
    )
    (call $call-i
      (block $block2
        (drop
          (i32.const 10)
        )
        (drop
          (i32.const 20)
        )
        (i32.const 30)
      )
    )
    (call $call-ii
      (block $block3
        (drop
          (i32.const 10)
        )
        (i32.const 20)
      )
      (block $block4
        (drop
          (i32.const 30)
        )
        (i32.const 40)
      )
    )
    (call $call-ii
      (block $block5
        (unreachable)
        (i32.const 10)
      )
      (block $block6
        (drop
          (i32.const 20)
        )
        (i32.const 30)
      )
    )
    (call $call-ii
      (block $block7
        (drop
          (i32.const 10)
        )
        (unreachable)
      )
      (block $block8
        (drop
          (i32.const 20)
        )
        (i32.const 30)
      )
    )
    (call $call-ii
      (block $block9
        (drop
          (i32.const 10)
        )
        (i32.const 20)
      )
      (block $block10
        (unreachable)
        (i32.const 30)
      )
    )
    (call $call-ii
      (block $block11
        (drop
          (i32.const 10)
        )
        (i32.const 20)
      )
      (block $block12
        (drop
          (i32.const 30)
        )
        (unreachable)
      )
    )
    (call $call-iii
      (block $block13
        (drop
          (i32.const 10)
        )
        (i32.const 20)
      )
      (block $block14
        (drop
          (i32.const 30)
        )
        (i32.const 40)
      )
      (block $block15
        (drop
          (i32.const 50)
        )
        (i32.const 60)
      )
    )
    (call $call-iii
      (block $block16
        (drop
          (i32.const 10)
        )
        (i32.const 20)
      )
      (i32.const 30)
      (block $block17
        (drop
          (i32.const 40)
        )
        (i32.const 50)
      )
    )
    (call_indirect $ii
      (block $block18
        (drop
          (i32.const 10)
        )
        (i32.const 20)
      )
      (block $block19
        (drop
          (i32.const 30)
        )
        (i32.const 40)
      )
      (block $block20
        (drop
          (i32.const 50)
        )
        (i32.const 60)
      )
    )
    (call_indirect $ii
      (unreachable)
      (block $block21
        (drop
          (i32.const 30)
        )
        (i32.const 40)
      )
      (block $block22
        (drop
          (i32.const 50)
        )
        (i32.const 60)
      )
    )
  )
  (func $block-type-change (type $3)
    (local $0 f64)
    (local $1 f64)
    (if
      (f64.gt
        (get_local $0)
        (block $block0
          (nop)
          (get_local $1)
        )
      )
      (nop)
    )
  )
)
