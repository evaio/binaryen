
function test(name) {
  Module.print(name);
  function doTest(x) {
    Module.print('  ' + [x] + ' ==> ' + Module['_check_' + name](x));
  }
  doTest(1);
  doTest(2);
  doTest(3);
  doTest(4);
  doTest(11);
  doTest(90);
}

test('if');
test('loop');
test('loop_break');
test('loop_continue');
test('do_loop');
