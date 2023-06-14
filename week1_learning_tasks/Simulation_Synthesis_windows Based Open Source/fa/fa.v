module full_adder(a,b,cin,sum,co);
  input a,b,cin;
  output sum,co;
  assign sum=a^b^cin;  //xor(sum,a,b,c)
  assign co=(a&b)|(a&cin)|(cin&b);  
endmodule