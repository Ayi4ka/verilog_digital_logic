# Register Modules in Verilog / Регистры на Verilog

This project demonstrates three fundamental methods for describing sequential logic in Verilog using **registers with various control signals**:

1. 🔁 **Register with synchronous reset**
2. ⚡ **Register with asynchronous reset**
3. 🟢 **Register with enable signal**

Each version shows how to properly use `always @(posedge clk)` blocks in Verilog and implement signal-driven behavior.

---

## 📂 Files

| File | Description (EN) | Описание (RU) |
|------|------------------|---------------|
| `reg_sync_reset.v` | Register with synchronous reset on clock edge. | Регистр с синхронным сбросом по фронту такта. |
| `reg_async_reset.v` | Register with asynchronous reset. | Регистр с асинхронным сбросом. |
| `reg_enable.v` | Register with enable signal. | Регистр с сигналом разрешения записи. |

---

## 📌 Logic Summary

- All modules use `reg` and `assign` to output the inverted signal.
- Basic form:  
```verilog
always @(posedge clk or negedge rst_n) begin
   if (!rst_n)
      o_o <= 0;
   else if (en)
      o_o <= i;
end
assign o = ~o_o;
