module mux (c,a,b,s);
input a,b,s;
output c;

assign c=(s)?b:a; // This is a behavioral style

endmodule
