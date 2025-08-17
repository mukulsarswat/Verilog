<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Verilog Projects</title>
  <style>
    :root { --accent:#0b6efd; --muted:#6b7280; --bg:#0f172a; --card:#111827; --text:#e6eef8; }
    body { font-family: Inter, system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial; margin:0; padding:36px; background:linear-gradient(180deg,#04102a 0%, #071433 100%); color:var(--text); }
    .container { max-width:1000px; margin:0 auto; }
    header { display:flex; align-items:center; gap:16px; }
    h1 { margin:0; font-size:28px; }
    p.lead { color:var(--muted); margin-top:8px; line-height:1.5; max-width:980px; }
    .card { background: rgba(255,255,255,0.03); padding:18px; border-radius:12px; margin-top:20px; box-shadow: 0 6px 18px rgba(2,6,23,0.6); }
    .index-list { list-style:none; padding:0; margin:0; display:grid; gap:8px; }
    .index-list li { padding:10px 12px; border-radius:8px; display:flex; justify-content:space-between; align-items:center; background: rgba(255,255,255,0.01); }
    .index-list a { color:var(--text); text-decoration:none; font-weight:600; }
    .index-list a:hover { color:var(--accent); text-decoration:underline; }
    .meta { color:var(--muted); font-size:13px; }
    footer { margin-top:28px; color:var(--muted); font-size:13px; }
    .btn { background:var(--accent); color:white; padding:8px 12px; border-radius:8px; text-decoration:none; }
    code { background: rgba(255,255,255,0.03); padding:2px 6px; border-radius:6px; font-size:13px; }
  </style>
</head>
<body>
  <div class="container">
    <header>
      <div>
        <h1>Verilog Projects</h1>
        <div class="meta">A compact collection of Verilog designs, simulations and example modules</div>
      </div>
    </header>

    <!-- short definition / description (3-4 lines) -->
    <div class="card">
      <p class="lead">
        Verilog is a hardware description language (HDL) used to model and design digital logic such as processors, controllers, and FPGA systems.
        It allows designers to describe hardware at behavioral and structural levels, simulate timing and verify functionality.
        This collection contains small-to-medium Verilog projects with simulation testbenches and README notes for each module.
      </p>
    </div>

    <!-- Project index placeholder (script will inject the list here) -->
    <div id="project-index" class="card">
      <h2 style="margin-top:0">📑 Index of Projects</h2>
      <!-- START_PROJECT_LIST -->
      <ul class="index-list">
        <!-- generated entries go here -->
      </ul>
      <!-- END_PROJECT_LIST -->
    </div>

    <div class="card" style="margin-top:18px;">
      <h3 style="margin:0 0 8px 0">🛠 How to run</h3>
      <ol style="margin:0 0 0 20px; color:var(--muted)">
        <li>Open the project folder in your preferred Verilog toolchain (Icarus Verilog, ModelSim, Vivado, etc.).</li>
        <li>Follow the README inside each project folder for compilation and simulation commands.</li>
        <li>Typical commands (Icarus): <code>iverilog -o out.vvp filename.v</code> then <code>vvp out.vvp</code>.</li>
      </ol>
    </div>
