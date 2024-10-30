module judge3simu;
reg a,b,c;
wire out;
judge3 sl(.(a)a,.(b)b,.(c)c,.(out)out)
initial
begin
a=0,b=0,c=0;
end
always #10{a,b,c}={a,b,c}+1;
endmodule