class ME_transaction;
	rand logic [7:0] r_data;
	rand logic [7:0] s1_data;
	rand logic [7:0] s2_data;

	logic [7:0] BestDist;
	logic [3:0] mX, mY;

	function void display(string name);
		$display("[%s] R:%h S1:%h S2:%h | BestDist:%h MV:(%d,%d)", 
                  name, r_data, s1_data, s2_data, BestDist, mX, mY);
	endfunction
endclass 
