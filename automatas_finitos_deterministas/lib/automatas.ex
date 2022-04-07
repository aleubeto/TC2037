defmodule Automatas do
    def a1 do
        %{
            states: [P0,P1,P2,P3],
            sigma: [?a, ?b],
            q0: P0,
            f: [P2],
            delta: %{
                {P0, ?a} => P1,
                {P0, ?b} => P3,
                {P1, ?a} => P1,
                {P1, ?b} => P2,
                {P2, ?a} => P1,
                {P2, ?b} => P2,
                {P3, ?a} => P3,
                {P3, ?b} => P3,
            }
        }
    end

    def a2 do
        %{
            states: [Q0,Q1,Q2,Q3],
            sigma: [?a, ?b],
            q0: Q0,
            f: [Q2],
            delta: %{
                {Q0, ?a} => Q3,
                {Q0, ?b} => Q1,
                {Q1, ?a} => Q2,
                {Q1, ?b} => Q1,
                {Q2, ?a} => Q2,
                {Q2, ?b} => Q1,
                {Q3, ?a} => Q3,
                {Q3, ?b} => Q3,
            }
        }
    end
end