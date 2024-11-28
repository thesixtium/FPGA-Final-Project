// Python generated

module inverse_kinematics (
    input  logic        clk,
    input  logic        reset,
    input  logic [7:0]  x,
    input  logic [7:0]  y,
    output logic [23:0] shoulder_angle,
    output logic [23:0] elbow_angle
);

always @(posedge clk) begin
    if (reset) begin
        elbow_angle <= 145000;
        shoulder_angle <= 180000;
    end else begin
        case({x, y})
            16'b00000001_00000001 : begin  // x=1 y=1
                // elbow = 121.4
                // shoulder = 152.7
                elbow_angle <= 74692;
                shoulder_angle <= 74692;
            end
            16'b00000001_00000010 : begin  // x=1 y=2
                // elbow = 131.6
                // shoulder = 136.2
                elbow_angle <= 86605;
                shoulder_angle <= 86605;
            end
            16'b00000001_00000011 : begin  // x=1 y=3
                // elbow = 129.8
                // shoulder = 116.4
                elbow_angle <= 100942;
                shoulder_angle <= 100942;
            end
            16'b00000001_00000100 : begin  // x=1 y=4
                // elbow = 122.6
                // shoulder = 93.2
                elbow_angle <= 117699;
                shoulder_angle <= 117699;
            end
            16'b00000010_00000001 : begin  // x=2 y=1
                // elbow = 94.7
                // shoulder = 136.2
                elbow_angle <= 86605;
                shoulder_angle <= 86605;
            end
            16'b00000010_00000010 : begin  // x=2 y=2
                // elbow = 106.9
                // shoulder = 123.7
                elbow_angle <= 95625;
                shoulder_angle <= 95625;
            end
            16'b00000010_00000011 : begin  // x=2 y=3
                // elbow = 109.4
                // shoulder = 106.1
                elbow_angle <= 108352;
                shoulder_angle <= 108352;
            end
            16'b00000010_00000100 : begin  // x=2 y=4
                // elbow = 105.2
                // shoulder = 83.6
                elbow_angle <= 124607;
                shoulder_angle <= 124607;
            end
            16'b00000011_00000001 : begin  // x=3 y=1
                // elbow = 76.6
                // shoulder = 116.4
                elbow_angle <= 100942;
                shoulder_angle <= 100942;
            end
            16'b00000011_00000010 : begin  // x=3 y=2
                // elbow = 86.8
                // shoulder = 106.1
                elbow_angle <= 108352;
                shoulder_angle <= 108352;
            end
            16'b00000011_00000011 : begin  // x=3 y=3
                // elbow = 90.0
                // shoulder = 90.0
                elbow_angle <= 120000;
                shoulder_angle <= 120000;
            end
            16'b00000011_00000100 : begin  // x=3 y=4
                // elbow = 86.7
                // shoulder = 67.1
                elbow_angle <= 136528;
                shoulder_angle <= 136528;
            end
            16'b00000100_00000001 : begin  // x=4 y=1
                // elbow = 60.6
                // shoulder = 93.2
                elbow_angle <= 117699;
                shoulder_angle <= 117699;
            end
            16'b00000100_00000010 : begin  // x=4 y=2
                // elbow = 68.4
                // shoulder = 83.6
                elbow_angle <= 124607;
                shoulder_angle <= 124607;
            end
            16'b00000100_00000011 : begin  // x=4 y=3
                // elbow = 70.4
                // shoulder = 67.1
                elbow_angle <= 136528;
                shoulder_angle <= 136528;
            end
            16'b00000100_00000100 : begin  // x=4 y=4
                // elbow = 64.5
                // shoulder = 38.9
                elbow_angle <= 156874;
                shoulder_angle <= 156874;
            end
            default : begin  // x=4 y=4
                // elbow = 64.5
                // shoulder = 38.9
                elbow_angle <= 156874;
                shoulder_angle <= 156874;
            end
        endcase
    end
end

endmodule
