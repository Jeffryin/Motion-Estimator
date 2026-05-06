typedef enum {PERFECT_MATCH, NEAR_MATCH, NO_MATCH} match_t;

class ME_transaction;
    rand match_t test_type;
	rand logic [7:0] Smem [0:1023];
	rand integer expected_mX;
	rand integer expected_mY;

    constraint type_c {
        test_type dist {PERFECT_MATCH := 40, NEAR_MATCH := 40, NO_MATCH := 20};
    }

	constraint bounds_c {
        expected_mX inside {[-8:7]};
        expected_mY inside {[-8:7]};
    }

    logic [7:0] Rmem [0:255];

    function void post_randomize();
        // Extract Rmem from Smem to guarantee a match at expected_mX/Y
        //Should be a Perfect Match
        for(int i=0; i<256; i++) begin
            Rmem[i] = Smem[32*8+8+(((i/16)+expected_mY)*32)+((i%16)+expected_mX)];
        end

        // if test type is near match
        if(test_type == NEAR_MATCH) begin
            for(int i = 0; i < 256; i++) begin
                Rmem[i] = Rmem[i] + $urandom_range(1,5);
            end
        end
        // if test type is no match
        else if(test_type == NO_MATCH) begin
            for(int i = 0; i < 256; i++) begin
                Rmem[i] = $urandom_range();
            end
        end
    endfunction

	logic [7:0] BestDist;
	logic [3:0] mX, mY;

	function void display(string name);
        $display("[%s] Expected MV:(%0d,%0d) | Actual MV:(%0d,%0d) | BestDist:%h", 
                  name, expected_mX, expected_mY, mX, mY, BestDist);
    endfunction
endclass 
