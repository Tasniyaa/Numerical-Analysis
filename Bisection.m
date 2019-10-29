function val = Bisection(f,a,b);
  f = inline(f);
  d = 0.0000000001;
  while b-a >= d
    c = (a+b)/2;
    printf("%d %d %d %d %d %d\n", a, b, f(a), f(b), c, f(c));
    if f(c)*f(a) < 0
      b = c;
    else
      a = c;
    endif
  endwhile
  val = c;
endfunction