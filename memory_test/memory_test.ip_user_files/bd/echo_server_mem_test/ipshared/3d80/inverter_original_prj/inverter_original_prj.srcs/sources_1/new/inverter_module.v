`timescale 1ns / 1ps

module inverter_module #(
    parameter integer DATA_WIDTH = 32
)(
    input  wire                    clk,
    input  wire                    reset_n,
    //////master interface/////////
    output reg  [DATA_WIDTH-1:0]   m_axis_data,
    output reg                     m_axis_valid,
    output reg                     m_axis_tlast,
    input  wire                    m_axis_ready,
    //////slave interface//////////
    input  wire  [DATA_WIDTH-1:0]  s_axis_data,
    input  wire                    s_axis_valid,
    input  wire                    s_axis_tlast,
    output reg                     s_axis_ready
);

    integer i;
    
//    assign   s_axis_ready = m_axis_ready;
//    assign   m_axis_valid = s_axis_valid; // <-- erase and uncomment lines 45-48 if it doesn't work, to revert back to before I made the change
//    assign   m_axis_tlast = s_axis_tlast;

//    always@(posedge clk)
//        m_axis_tlast <= s_axis_tlast;

    always@(posedge clk)
    begin 
        if (s_axis_valid & s_axis_ready)
        begin
/*            m_axis_data[7:0] <= 255 - s_axis_data[7:0];
            m_axis_data[15:8] <= 255 - s_axis_data[15:8];
            m_axis_data[23:16] <= 255 - s_axis_data[23:16];
            m_axis_data[DATA_WIDTH-1:24] <= 255 - s_axis_data[DATA_WIDTH-1:24];*/
            for(i = 0;i < DATA_WIDTH/8; i = i + 1 )
            begin
                //m_axis_data[i*8+:8] <= 255 - s_axis_data[i*8+:8];
                m_axis_data[i*8+:8] <= s_axis_data[i*8+:8];
            end
        end
    end

    always@(posedge clk)
    begin
            m_axis_valid <= s_axis_valid;
            s_axis_ready <= m_axis_ready;
            m_axis_tlast <= s_axis_tlast;
    end

endmodule
