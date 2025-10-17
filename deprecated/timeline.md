# BNR Refit Project Timeline (2025–2026)

This timeline outlines the planned activities for the BNR Refit Project, which runs from January 2025 to March 2026. The project focuses on enhancing analytics, automating report generation, simplifying access via a code-free interface, and building robust training resources for staff. It is organized into four key phases and includes time for wrap-up and final testing.





<div id="ganttPlotly" style="width:100%;max-width:100%;height:660px;"></div>

<script>
(window.document$ || { subscribe: (fn) => window.addEventListener('DOMContentLoaded', fn) })
.subscribe(function () {
  if (!window.Plotly) return;

  const d = s => new Date(s);
  const addDays = (s, n) => new Date(d(s).getTime() + n*24*3600*1000).toISOString().slice(0,10);
  const after = end => d(end);

  // ---- TASKS ----
  const a1 = { phase:'PHASE 0', task:'Contract Wait', start:'2024-11-30', end:'2025-03-30' };
  const dataset = { phase:'PHASE 0', task:'Dataset Wait', start:'2025-02-01', end:'2025-07-31' };

  const b1 = { phase:'PHASE 1-ASSESS ANALYTICS', task:'Audit Do files', start:'2025-08-01', end:'2025-08-31' };
  const b2 = { phase:'PHASE 1-ASSESS ANALYTICS', task:'Data release process', start:after(b1.end).toISOString().slice(0,10), end:addDays(b1.end,14) };
  const b3 = { phase:'PHASE 1-ASSESS ANALYTICS', task:'Data dissemination process', start:after(b1.end).toISOString().slice(0,10), end:addDays(b1.end,14) };
  const m1_date = b2.end;

  const c1 = { phase:'PHASE 2-NEW ANALYTICS', task:'Re-write report (Annual)', start:b3.end, end:addDays(b3.end,21) };
  const c2 = { phase:'PHASE 2-NEW ANALYTICS', task:'Re-write report (Monthly)', start:c1.end, end:addDays(c1.end,21) };
  const c3 = { phase:'PHASE 2-NEW ANALYTICS', task:'Re-write reports (Admin)', start:c2.end, end:addDays(c2.end,21) };
  const m2_date = c3.end;

  const d1t = { phase:'PHASE 3-CODE-FREE ACCESS', task:'Build Stata menu system', start:c3.end, end:addDays(c3.end,30) };
  const d2t = { phase:'PHASE 3-CODE-FREE ACCESS', task:'Installation SOP', start:d1t.end, end:addDays(d1t.end,7) };
  const m3_date = d2t.end;

  const e1 = { phase:'PHASE 4-SYSTEM TRAINING', task:'Build online Web Manual', start:'2025-07-01', end:addDays('2025-07-01',210) };
  const e2 = { phase:'PHASE 4-SYSTEM TRAINING', task:'Asynchronous training', start:e1.end, end:addDays(e1.end,14) };
  const m4_date = e2.end;

  const f1 = { phase:'WRAP-UP', task:'Final testing and wrap-up', start:e2.end, end:addDays(e2.end,30) };

  const tasks = [a1, dataset, b1, b2, b3, c1, c2, c3, d1t, d2t, e1, e2, f1];

  // ---- ORDER ----
  const PHASE_ORDER = [
    'PHASE 0',
    'PHASE 1-ASSESS ANALYTICS',
    'PHASE 2-NEW ANALYTICS',
    'PHASE 3-CODE-FREE ACCESS',
    'PHASE 4-SYSTEM TRAINING',
    'WRAP-UP'
  ];

  const byPhase = new Map();
  tasks.forEach(t => {
    if (!byPhase.has(t.phase)) byPhase.set(t.phase, []);
    byPhase.get(t.phase).push(t);
  });

  const phasesOrdered = PHASE_ORDER.filter(p => byPhase.has(p));
  phasesOrdered.forEach(p => byPhase.get(p).sort((u, v) => d(u.start) - d(v.start)));
  const orderedTasks = phasesOrdered.flatMap(p => byPhase.get(p));

  // ---- LABELS ----
  const boldPhase = phase => `<b>${phase}</b>`;
  const yVals  = orderedTasks.map((t,i) => `row-${i}`);
  const yTexts = orderedTasks.map(t => `${t.task} • (${boldPhase(t.phase)})`);

  // ---- COLORS ----
  const palette = ['#045174', '#d97b1d'];
  const phaseColor = Object.fromEntries(phasesOrdered.map((p, idx) => [p, palette[idx % palette.length]]));

  const isDatasetWait = t =>
    t.phase === 'PHASE 0' && /dataset\s*wait/i.test(t.task);

  const bars = orderedTasks.map((t, i) => {
    const baseBar = {
      type: 'bar',
      orientation: 'h',
      y: [yVals[i]],
      x: [ d(t.end) - d(t.start) ],
      base: [ t.start ],
      hovertemplate: `<b>${t.task}</b><br>${t.phase}<br>${t.start} → ${t.end}<extra></extra>`,
      showlegend: false
    };
    if (isDatasetWait(t)) {
      return { ...baseBar, marker: { color:'#606263ff', line:{color:'#000000', width:1.5} } };
    }
    return { ...baseBar, marker: { color:phaseColor[t.phase], opacity:0.95 } };
  });

  // ---- MILESTONES ----
  function lastRowInPhase(phase) {
    const arr = byPhase.get(phase);
    const last = arr[arr.length - 1];
    const idx = orderedTasks.indexOf(last);
    return yVals[idx];
  }

  const milestones = [
    { name:'Web Report (m1)', date:m1_date, y:lastRowInPhase('PHASE 1-ASSESS ANALYTICS') },
    { name:'Do Files (m2)', date:m2_date, y:lastRowInPhase('PHASE 2-NEW ANALYTICS') },
    { name:'Menu system (m3)', date:m3_date, y:lastRowInPhase('PHASE 3-CODE-FREE ACCESS') },
    { name:'Web resource (m4)', date:m4_date, y:lastRowInPhase('PHASE 4-SYSTEM TRAINING') }
  ];

  const milestoneTrace = {
    type: 'scatter',
    mode: 'markers+text',
    x: milestones.map(m => m.date),
    y: milestones.map(m => m.y),
    marker: { symbol:'diamond', size:12, color:'#B04A4A', line:{color:'#000000', width:1.5} },
    text: milestones.map(m => m.name),
    textposition: 'right',
    hovertemplate: '%{text}<br>%{x}<extra></extra>',
    name: 'Milestones'
  };

  // ---- Layout WITHOUT Today Marker ----
  const height = 40 * (orderedTasks.length + milestones.length * 0.5) + 140;
  const layout = {
    barmode: 'stack',
    xaxis: { type: 'date', tickformat: '%b %Y', automargin: true },
    yaxis: {
      automargin: true,
      categoryorder: 'array',
      categoryarray: yVals,
      tickmode: 'array',
      tickvals: yVals,
      ticktext: yTexts,
      autorange: 'reversed'
    },
    margin: { l: 260, r: 20, t: 10, b: 40 },
    height
  };

  Plotly.newPlot('ganttPlotly', [...bars, milestoneTrace], layout, {responsive: true});
});
</script>


</br></br></br>
