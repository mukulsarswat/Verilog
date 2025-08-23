# 🔁 D Flip-Flop Designs in Verilog

This repository showcases two implementations of a **negative-edge triggered D flip-flop** using Verilog:

- 🧱 **Gate-Level Modeling**: Built from basic logic gates (`nand`, `not`)
- 🧠 **Behavioral Modeling**: Using `always` block with edge sensitivity

Both designs demonstrate the principles of sequential logic and clock synchronization, ideal for learners and recruiters evaluating digital design proficiency.
---

## 📘 What Is a D Flip-Flop?

A **D flip-flop** (Data or Delay flip-flop) stores the value of input `D` on a clock edge and holds it until the next triggering event. It's a fundamental building block in digital systems for:

- Data storage
- Edge-triggered synchronization
- Sequential circuit design

---
### 🧠 Master-Slave Architecture

| Component | Clock Edge | Role |
|----------|------------|------|
| **Master** | Positive edge (`CLK`) | Captures input `D` |
| **Slave**  | Negative edge (`~CLK`) | Transfers master's output to final `Q` |

This ensures stable output transitions only on the falling edge of the clock.

---

### 🧪 Behavior Summary

- **Triggered on falling edge of `clk`**
- **Asynchronous reset** clears output when `rst` is high
- **Data `d` is latched when `rst` is low**

---
## 📺 Output Waveform

- Use waveform viewers to compare gate-level vs behavioral timing.
- [Gate Level](https://photos.app.goo.gl/FC48PyjHrffvvKge6)    and [Behavioral](https://photos.app.goo.gl/FC48PyjHrffvvKge6)

---

## 📊 Comparison: Gate-Level vs Behavioral Modeling

| Feature                        | Gate-Level Modeling                                      | Behavioral Modeling                                      |
|-------------------------------|-----------------------------------------------------------|-----------------------------------------------------------|
| **Design Style**              | Uses basic logic gates (`nand`, `not`)                   | Uses `always` block with procedural assignments           |
| **Abstraction Level**         | Low-level (close to hardware)                            | High-level (describes behavior, not structure)            |
| **Code Complexity**           | More verbose and intricate                               | Concise and readable                                      |
| **Simulation Speed**          | Slower due to detailed gate interactions                 | Faster due to abstract execution                         |
| **Clock Sensitivity**         | Achieved via master-slave and clock inversion            | Directly specified using `negedge clk`                   |
| **Reset Handling**            | Requires manual gate logic for reset                     | Easily handled with `if-else` inside `always` block       |
| **Educational Value**         | Great for understanding internal latch behavior          | Ideal for learning control flow and edge-triggered logic |
| **Use Case**                  | Hardware-level design and verification                   | RTL design and functional simulation                     |
| **Testbench Requirements**    | Requires careful waveform analysis                       | Easier to validate with simple input sequences            |


---

## 🚀 Next Steps

- Add waveform screenshots and timing diagrams
- Expand with enable signals or synchronous reset
- Compare with other flip-flop types (JK, T, SR)
