set clock_constraint { \
    name clk \
    module sobel_filter \
    port ap_clk \
    period 5 \
    uncertainty 0.625 \
}

set all_path {}

set false_path {}

