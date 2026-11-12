<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ITパスポート取得に関しての情報サイト</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@400;700&display=swap" rel="stylesheet">
  <style>
    :root {
      --ink: #1f1f1f;
      --ink-2: #4f4f4f;
      --ink-3: #858585;
      --line: #d4d4cf;
      --line-soft: #e7e7e2;
      --paper: #fff;
      --paper-2: #f5f5f2;
      --accent: #1a4f9c;
      --accent-soft: #e8eef8;
      --c-strategy: #2f62b0;
      --c-management: #d9822b;
      --c-technology: #2e8a63;
      --warn: #a3471b;
      --warn-soft: #fbf1ea;
    }
    * { box-sizing: border-box; }
    html { scroll-behavior: smooth; }
    body {
      margin: 0;
      font-family: "Noto Sans JP", "Hiragino Kaku Gothic ProN", "Meiryo", sans-serif;
      font-size: 16px;
      line-height: 1.9;
      color: var(--ink);
      background: var(--paper);
    }
    .page { max-width: 800px; margin: 0 auto; padding: 44px 24px 72px; }
    a { color: var(--accent); }
    a:hover { color: #0d3570; }
    p { margin: 0 0 1em; }

    /* ---------- タイトル ---------- */
    .crumb { font-size: 12px; color: var(--ink-3); margin: 0 0 6px; }
    h1 { font-size: 28px; line-height: 1.45; margin: 0 0 28px; letter-spacing: 0.02em; }

    /* ---------- 見出し ---------- */
    h2 {
      font-size: 22px; line-height: 1.5;
      margin: 72px 0 8px; padding-bottom: 8px;
      border-bottom: 2px solid var(--ink);
    }
    h2 .no { color: var(--accent); margin-right: 0.45em; }
    .point { font-size: 17px; font-weight: 700; margin: 16px 0 20px; }
    h3 { font-size: 17px; margin: 36px 0 12px; }
    section { scroll-margin-top: 16px; }

    /* ---------- サマリ ---------- */
    .summary { background: var(--paper-2); border-top: 4px solid var(--accent); padding: 28px 28px 24px; }
    .summary h2 { margin: 0 0 22px; padding: 0; border: 0; font-size: 20px; }
    .flow { list-style: none; margin: 0; padding: 0; display: grid; grid-template-columns: repeat(5, 1fr); counter-reset: flow; }
    .flow li { position: relative; padding: 0 6px; text-align: center; counter-increment: flow; }
    .flow li::before {
      content: counter(flow);
      position: relative; z-index: 1;
      display: flex; align-items: center; justify-content: center;
      width: 48px; height: 48px; margin: 0 auto 12px;
      border-radius: 50%; background: #fff; border: 2px solid var(--accent);
      color: var(--accent); font-weight: 700; font-size: 19px;
    }
    .flow li:not(:last-child)::after {
      content: ""; position: absolute; top: 23px; left: calc(50% + 24px); right: calc(-50% + 24px);
      height: 2px; background: var(--accent);
    }
    .flow li.is-study::before { background: var(--accent); color: #fff; }
    .flow li.is-goal::before { content: "✓"; background: var(--ink); border-color: var(--ink); color: #fff; }
    .flow .t { display: block; font-weight: 700; font-size: 15px; line-height: 1.5; }
    .flow .d { display: block; font-size: 13px; color: var(--ink-2); line-height: 1.6; margin-top: 4px; }

    .tiles { display: grid; grid-template-columns: repeat(4, 1fr); gap: 10px; margin: 28px 0 0; }
    .tile { background: #fff; border: 1px solid var(--line-soft); padding: 12px 14px; }
    .tile .k { display: block; font-size: 12px; color: var(--ink-3); }
    .tile .v { display: block; font-size: 22px; font-weight: 700; line-height: 1.35; margin-top: 2px; }
    .tile .v small { font-size: 13px; font-weight: 700; margin-left: 2px; }
    .tile .s { display: block; font-size: 12px; color: var(--ink-2); line-height: 1.5; margin-top: 4px; }

    .notice { margin: 20px 0 0; padding: 12px 16px; border-left: 4px solid var(--warn); background: var(--warn-soft); font-size: 14px; line-height: 1.8; }
    .notice b { color: var(--warn); }
    .cta { display: flex; flex-wrap: wrap; gap: 10px 24px; margin: 20px 0 0; font-size: 15px; font-weight: 700; }

    .toc { list-style: none; margin: 28px 0 0; padding: 0; display: grid; grid-template-columns: repeat(4, 1fr); gap: 8px; }
    .toc a { display: block; height: 100%; padding: 10px 12px; border: 1px solid var(--line); text-decoration: none; color: var(--ink); font-size: 14px; line-height: 1.5; }
    .toc a:hover { border-color: var(--accent); color: var(--accent); }
    .toc .n { display: block; color: var(--accent); font-weight: 700; font-size: 12px; }

    /* ---------- 図 ---------- */
    figure { margin: 20px 0 28px; padding: 22px; background: var(--paper-2); }
    figcaption { font-size: 14px; font-weight: 700; margin-bottom: 16px; }
    figcaption small { font-weight: normal; color: var(--ink-3); margin-left: 0.5em; font-size: 12px; }
    .source { font-size: 12px; color: var(--ink-3); margin: 14px 0 0; line-height: 1.7; }

    /* 試験レベル（階段） */
    .stairs { display: flex; align-items: flex-end; gap: 6px; height: 190px; }
    .stair { flex: 1; padding: 10px; background: #fff; border: 1px solid var(--line); font-size: 13px; line-height: 1.5; color: var(--ink-2); }
    .stair .lv { display: block; font-size: 11px; color: var(--ink-3); }
    .stair .nm { display: block; font-weight: 700; color: var(--ink); font-size: 14px; }
    .stair.is-here { background: var(--accent); border-color: var(--accent); color: #dfe8f6; }
    .stair.is-here .lv { color: #c4d4ee; }
    .stair.is-here .nm { color: #fff; }
    .stair:nth-child(1) { height: 38%; }
    .stair:nth-child(2) { height: 58%; }
    .stair:nth-child(3) { height: 79%; }
    .stair:nth-child(4) { height: 100%; }

    /* 出題分野 */
    .stack { display: flex; gap: 2px; height: 44px; }
    .stack > div { display: flex; align-items: center; justify-content: center; color: #fff; font-weight: 700; font-size: 14px; }
    .stack > div:first-child { border-radius: 4px 0 0 4px; }
    .stack > div:last-child { border-radius: 0 4px 4px 0; }
    .s-strategy { background: var(--c-strategy); }
    .s-management { background: var(--c-management); }
    .s-technology { background: var(--c-technology); }
    .fields { display: grid; grid-template-columns: repeat(3, 1fr); gap: 10px; margin-top: 14px; }
    .field { background: #fff; border-top: 3px solid; padding: 12px 14px; font-size: 14px; line-height: 1.8; }
    .f-strategy { border-color: var(--c-strategy); }
    .f-management { border-color: var(--c-management); }
    .f-technology { border-color: var(--c-technology); }
    .field .nm { display: block; font-weight: 700; font-size: 15px; }
    .field .ct { display: block; color: var(--ink-3); font-size: 12px; }
    .field ul { margin: 8px 0 0; padding-left: 1.1em; color: var(--ink-2); }

    /* 合格基準 */
    .gauge-row { display: grid; grid-template-columns: 8em 1fr; align-items: center; gap: 12px; margin-bottom: 12px; font-size: 14px; }
    .gauge { position: relative; height: 24px; background: #fff; border: 1px solid var(--line); }
    .gauge .fail { position: absolute; left: 0; top: 0; bottom: 0; background: repeating-linear-gradient(135deg, #e9e9e6 0 4px, #f7f7f5 4px 8px); }
    .gauge .pass { position: absolute; top: 0; bottom: 0; right: 0; background: var(--accent-soft); }
    .gauge .mark { position: absolute; top: -4px; bottom: -4px; width: 2px; background: var(--accent); }
    .gauge .val { position: absolute; top: 50%; transform: translate(8px, -50%); font-size: 13px; font-weight: 700; color: var(--accent); white-space: nowrap; }
    .gauge-row.total .gauge { height: 30px; }
    .gauge-scale { display: grid; grid-template-columns: 8em 1fr; gap: 12px; font-size: 11px; color: var(--ink-3); }
    .gauge-scale div:last-child { display: flex; justify-content: space-between; }

    /* ---------- 勉強時間（レベル別） ---------- */
    .lv-head, .lv-row { display: grid; grid-template-columns: 170px 130px 1fr 120px; gap: 14px; align-items: center; }
    .lv-head { font-size: 12px; color: var(--ink-3); padding-bottom: 6px; border-bottom: 1px solid var(--line); }
    .lv-row { padding: 14px 0; border-bottom: 1px solid var(--line-soft); }
    .lv-name { font-weight: 700; font-size: 15px; line-height: 1.5; }
    .lv-name small { display: block; font-weight: normal; font-size: 12px; color: var(--ink-3); }
    .lv-hrs { font-size: 18px; font-weight: 700; color: var(--accent); line-height: 1.4; white-space: nowrap; }
    .lv-hrs small { font-size: 12px; margin-left: 1px; }
    .lv-period { font-size: 15px; font-weight: 700; line-height: 1.4; }
    .lv-period small { display: block; font-size: 11px; font-weight: normal; color: var(--ink-3); }
    .lv-track { position: relative; height: 20px; background: #fff; border: 1px solid var(--line-soft); }
    .lv-track .g { position: absolute; top: 0; bottom: 0; width: 1px; background: var(--line-soft); }
    .lv-track .b { position: absolute; top: 3px; bottom: 3px; background: var(--accent); border-radius: 4px; }
    .lv-track .b.soft { background: #9db6dc; }
    .lv-axis { display: grid; grid-template-columns: 170px 130px 1fr 120px; gap: 14px; font-size: 11px; color: var(--ink-3); margin-top: 6px; }
    .lv-axis .ticks { position: relative; height: 16px; }
    .lv-axis .ticks span { position: absolute; transform: translateX(-50%); white-space: nowrap; }
    .lv-axis .ticks span:first-child { transform: none; }
    .lv-axis .ticks span:last-child { transform: translateX(-100%); }

    .who { display: grid; grid-template-columns: 1fr 1fr; gap: 12px; }
    .who > div { border: 1px solid var(--line); padding: 16px 18px; }
    .who .h { font-weight: 700; font-size: 16px; margin-bottom: 6px; }
    .who p { margin: 0; color: var(--ink-2); font-size: 14px; line-height: 1.8; }

    .points { list-style: none; margin: 0; padding: 0; display: grid; grid-template-columns: 1fr 1fr; gap: 12px; }
    .points li { background: var(--paper-2); padding: 16px 18px; }
    .points .n { display: block; font-weight: 700; color: var(--accent); font-size: 13px; }
    .points b { display: block; font-size: 16px; margin: 2px 0 6px; }
    .points p { margin: 0; font-size: 14px; color: var(--ink-2); line-height: 1.8; }

    /* ---------- 申し込み手順 ---------- */
    .timeline { list-style: none; margin: 0; padding: 0; position: relative; }
    .timeline::before { content: ""; position: absolute; left: 19px; top: 10px; bottom: 10px; width: 2px; background: var(--line); }
    .timeline > li { position: relative; padding: 0 0 28px 60px; }
    .timeline > li:last-child { padding-bottom: 0; }
    .timeline .pin {
      position: absolute; left: 0; top: 0; width: 40px; height: 40px; border-radius: 50%;
      display: flex; align-items: center; justify-content: center;
      background: #fff; border: 2px solid var(--accent); color: var(--accent); font-weight: 700; font-size: 16px;
    }
    .timeline .pin.dark { background: var(--ink); border-color: var(--ink); color: #fff; font-size: 13px; }
    .timeline b { display: block; font-size: 17px; line-height: 1.5; padding-top: 6px; margin-bottom: 4px; }
    .timeline p { margin: 0; font-size: 15px; }
    .timeline .sub { margin: 10px 0 0; padding: 10px 14px; background: var(--paper-2); font-size: 14px; color: var(--ink-2); }
    .timeline .sub ul { margin: 0; padding-left: 1.2em; }

    /* ---------- 教材 ---------- */
    .resources { list-style: none; margin: 0; padding: 0; display: grid; gap: 12px; }
    .resources > li { border: 1px solid var(--line); padding: 18px 20px; }
    .resources .tag { display: inline-block; font-size: 12px; color: var(--ink-2); background: var(--paper-2); padding: 0 8px; margin-bottom: 4px; }
    .resources .tt { display: block; font-weight: 700; font-size: 17px; }
    .resources .url { word-break: break-all; font-size: 13px; }
    .resources ol { list-style: lower-alpha; margin: 8px 0 0; padding-left: 1.6em; font-size: 15px; }
    .note { font-size: 13px; color: var(--ink-3); margin-top: 16px; }

    .refs { margin-top: 56px; padding-top: 12px; border-top: 1px solid var(--line); font-size: 12px; color: var(--ink-3); line-height: 1.7; }
    .back { margin-top: 24px; font-size: 14px; }

    /* ---------- スマホ ---------- */
    @media (max-width: 640px) {
      body { font-size: 15px; }
      .page { padding: 28px 16px 56px; }
      h1 { font-size: 22px; margin-bottom: 20px; }
      h2 { font-size: 19px; margin-top: 56px; }
      .point { font-size: 15.5px; }
      .summary { padding: 22px 16px 18px; margin: 0 -16px; }
      .flow { grid-template-columns: 1fr; }
      .flow li { display: grid; grid-template-columns: 44px 1fr; column-gap: 14px; text-align: left; padding: 0 0 16px; }
      .flow li::before { width: 44px; height: 44px; margin: 0; grid-row: 1 / 3; font-size: 17px; }
      .flow li:not(:last-child)::after { top: 44px; bottom: 0; left: 21px; right: auto; width: 2px; height: auto; }
      .flow .t { padding-top: 2px; }
      .flow .d { margin-top: 0; }
      .tiles { grid-template-columns: 1fr 1fr; margin-top: 12px; }
      .tile .v { font-size: 19px; }
      .toc { grid-template-columns: 1fr 1fr; }
      figure { padding: 16px; margin-left: -16px; margin-right: -16px; }
      .stairs { flex-direction: column-reverse; align-items: flex-start; height: auto; gap: 4px; }
      .stair { flex: none; height: auto !important; display: flex; align-items: baseline; gap: 8px; padding: 8px 12px; }
      .stair:nth-child(1) { width: 55%; }
      .stair:nth-child(2) { width: 70%; }
      .stair:nth-child(3) { width: 85%; }
      .stair:nth-child(4) { width: 100%; }
      .stair .ex { display: none; }
      .fields, .who, .points { grid-template-columns: 1fr; }
      .lv-head { display: none; }
      .lv-row { grid-template-columns: 1fr auto; grid-template-areas: "name name" "hrs period" "bar bar"; gap: 4px 12px; }
      .lv-name { grid-area: name; }
      .lv-hrs { grid-area: hrs; }
      .lv-period { grid-area: period; font-size: 14px; text-align: right; }
      .lv-track { grid-area: bar; margin-top: 4px; }
      .lv-axis { grid-template-columns: 1fr; }
      .lv-axis > span { display: none; }
      .gauge-row, .gauge-scale { grid-template-columns: 7.4em 1fr; font-size: 12.5px; }
      .timeline > li { padding-left: 54px; }
    }
  </style>
</head>
<body>
<div class="page" id="top">

  <!-- ================= タイトル ================= -->
  <p class="crumb">社内ポータル ＞ 資格取得支援</p>
  <h1>ITパスポート取得に関しての情報サイト</h1>

  <!-- ================= サマリ ================= -->
  <section class="summary" id="summary" aria-labelledby="summary-h">
    <h2 id="summary-h">サマリ：受験までの流れ</h2>

    <ol class="flow">
      <li><span class="t">利用者ID登録</span><span class="d">公式サイトで登録</span></li>
      <li><span class="t">会場・日時予約</span><span class="d">全国の会場から選ぶ</span></li>
      <li><span class="t">受験料支払い</span><span class="d">7,500円＋税</span></li>
      <li class="is-study"><span class="t">勉強</span><span class="d">1〜3ヶ月が目安</span></li>
      <li class="is-goal"><span class="t">受験</span><span class="d">確認票・本人確認書類を持参</span></li>
    </ol>

    <div class="tiles">
      <div class="tile"><span class="k">受験料</span><span class="v">7,500<small>円＋税</small></span></div>
      <div class="tile"><span class="k">試験</span><span class="v">120<small>分</small> / 100<small>問</small></span><span class="s">パソコンで解答する四択問題</span></div>
      <div class="tile"><span class="k">合格ライン</span><span class="v">600<small>点</small></span><span class="s">1,000点中。各分野300点以上も必要</span></div>
      <div class="tile"><span class="k">勉強時間の目安</span><span class="v">50〜180<small>時間</small></span><span class="s">1日2時間で約1〜3ヶ月</span></div>
    </div>

    <div class="notice">
      <b>【重要】2026年12月28日以降、試験の休止が予定されています。</b>再開時期は未定です。年内に受験する方は<a href="https://www3.jitec.ipa.go.jp/JitesCbt/index.html" target="_blank" rel="noopener noreferrer">公式サイト</a>で最新情報を確認のうえ、早めに予約してください。
    </div>

    <div class="cta">
      <a href="https://www3.jitec.ipa.go.jp/JitesCbt/index.html" target="_blank" rel="noopener noreferrer">→ 公式サイトで申し込む</a>
      <a href="#resources">→ 無料の教材を見る</a>
    </div>
  </section>

  <ul class="toc">
    <li><a href="#about"><span class="n">1</span>ITパスポートについて</a></li>
    <li><a href="#study"><span class="n">2</span>勉強時間と学習内容</a></li>
    <li><a href="#apply"><span class="n">3</span>申し込み手順</a></li>
    <li><a href="#resources"><span class="n">4</span>勉強するための教材</a></li>
  </ul>

  <!-- ================= 1. ITパスポートについて ================= -->
  <section id="about">
    <h2><span class="no">1</span>ITパスポートについて</h2>
    <p class="point">ITを「使う側」として必要な基礎知識を証明する、入門レベルの国家資格です。</p>
    <p>ITパスポート（通称「iパス」）は、経済産業省が認定する情報処理技術者試験のなかで最も基礎的なレベル1の<strong>国家資格</strong>です。プログラミングやシステム開発のスキルを問う試験ではなく、ビジネスや社会で必要なITの基礎知識を幅広く問います。受験資格はなく、合格率は50％前後です。</p>

    <figure>
      <figcaption>図1　情報処理技術者試験の中での位置づけ</figcaption>
      <div class="stairs" role="img" aria-label="レベル1 ITパスポート、レベル2 基本情報技術者など、レベル3 応用情報技術者、レベル4 高度試験">
        <div class="stair is-here"><span class="lv">レベル1</span><span class="nm">ITパスポート</span><span class="ex">ITを使う側の基礎</span></div>
        <div class="stair"><span class="lv">レベル2</span><span class="nm">基本情報技術者 など</span><span class="ex">ITを作る側の基礎</span></div>
        <div class="stair"><span class="lv">レベル3</span><span class="nm">応用情報技術者</span><span class="ex">応用力・記述式</span></div>
        <div class="stair"><span class="lv">レベル4</span><span class="nm">高度試験</span><span class="ex">専門分野ごと</span></div>
      </div>
    </figure>

    <figure>
      <figcaption>図2　出題分野と問題数<small>全100問</small></figcaption>
      <div class="stack" role="img" aria-label="ストラテジ系35問、マネジメント系20問、テクノロジ系45問">
        <div class="s-strategy" style="width:35%" title="ストラテジ系：35問程度">35問</div>
        <div class="s-management" style="width:20%" title="マネジメント系：20問程度">20問</div>
        <div class="s-technology" style="width:45%" title="テクノロジ系：45問程度">45問</div>
      </div>
      <div class="fields">
        <div class="field f-strategy">
          <span class="nm">ストラテジ系</span><span class="ct">経営全般・35問程度</span>
          <ul><li>経営戦略・マーケティング</li><li>財務・会計</li><li>法務（知的財産など）</li></ul>
        </div>
        <div class="field f-management">
          <span class="nm">マネジメント系</span><span class="ct">IT管理・20問程度</span>
          <ul><li>プロジェクト管理</li><li>開発手法（アジャイルなど）</li><li>サービス管理・監査</li></ul>
        </div>
        <div class="field f-technology">
          <span class="nm">テクノロジ系</span><span class="ct">IT技術・45問程度</span>
          <ul><li>セキュリティ・ネットワーク</li><li>AI・ビッグデータ・IoT</li><li>コンピュータの基礎</li></ul>
        </div>
      </div>
    </figure>

    <figure>
      <figcaption>図3　合格基準<small>両方を満たすと合格</small></figcaption>
      <div class="gauge-row total">
        <b>総合</b>
        <div class="gauge" title="総合評価点 600点以上／1,000点">
          <div class="fail" style="width:60%"></div><div class="pass" style="left:60%"></div>
          <div class="mark" style="left:60%"></div><span class="val" style="left:60%">600点以上</span>
        </div>
      </div>
      <div class="gauge-row">
        <span>ストラテジ系</span>
        <div class="gauge" title="ストラテジ系 300点以上／1,000点">
          <div class="fail" style="width:30%"></div><div class="pass" style="left:30%"></div>
          <div class="mark" style="left:30%"></div><span class="val" style="left:30%">300点以上</span>
        </div>
      </div>
      <div class="gauge-row">
        <span>マネジメント系</span>
        <div class="gauge" title="マネジメント系 300点以上／1,000点">
          <div class="fail" style="width:30%"></div><div class="pass" style="left:30%"></div>
          <div class="mark" style="left:30%"></div><span class="val" style="left:30%">300点以上</span>
        </div>
      </div>
      <div class="gauge-row">
        <span>テクノロジ系</span>
        <div class="gauge" title="テクノロジ系 300点以上／1,000点">
          <div class="fail" style="width:30%"></div><div class="pass" style="left:30%"></div>
          <div class="mark" style="left:30%"></div><span class="val" style="left:30%">300点以上</span>
        </div>
      </div>
      <div class="gauge-scale"><div></div><div><span>0</span><span>500</span><span>1,000点</span></div></div>
      <p class="source">得意分野で点数を稼いでも、1分野でも300点に届かなければ不合格です。</p>
    </figure>
  </section>

  <!-- ================= 2. 勉強時間と内容 ================= -->
  <section id="study">
    <h2><span class="no">2</span>合格に必要な勉強時間と学習内容</h2>
    <p class="point">1日2時間の勉強で、約1ヶ月〜3ヶ月が目安です。必要な時間はITの経験によって変わります。</p>

    <figure>
      <figcaption>図4　レベル別の勉強時間と期間の目安<small>1日2時間勉強した場合</small></figcaption>
      <div class="lv-head" aria-hidden="true"><span>受験者のレベル</span><span>勉強時間の目安</span><span></span><span>期間の目安</span></div>
      <div class="lv-row">
        <div class="lv-name">IT未経験・文系<small>初心者</small></div>
        <div class="lv-hrs">約100〜180<small>時間</small></div>
        <div class="lv-track" title="IT未経験・文系：約100〜180時間"><span class="g" style="left:25%"></span><span class="g" style="left:50%"></span><span class="g" style="left:75%"></span><span class="b" style="left:50%;width:40%"></span></div>
        <div class="lv-period">約1.5〜3ヶ月</div>
      </div>
      <div class="lv-row">
        <div class="lv-name">ITの基礎知識あり</div>
        <div class="lv-hrs">約100<small>時間前後</small></div>
        <div class="lv-track" title="ITの基礎知識あり：約100時間前後"><span class="g" style="left:25%"></span><span class="g" style="left:50%"></span><span class="g" style="left:75%"></span><span class="b soft" style="left:45%;width:10%"></span></div>
        <div class="lv-period">約1.5ヶ月</div>
      </div>
      <div class="lv-row">
        <div class="lv-name">IT実務経験者・理系など</div>
        <div class="lv-hrs">約50〜80<small>時間</small></div>
        <div class="lv-track" title="IT実務経験者・理系など：約50〜80時間"><span class="g" style="left:25%"></span><span class="g" style="left:50%"></span><span class="g" style="left:75%"></span><span class="b" style="left:25%;width:15%"></span></div>
        <div class="lv-period">約1ヶ月未満〜1.5ヶ月</div>
      </div>
      <div class="lv-axis" aria-hidden="true">
        <span></span><span></span>
        <div class="ticks"><span style="left:0">0</span><span style="left:25%">50</span><span style="left:50%">100</span><span style="left:75%">150</span><span style="left:100%">200</span></div>
        <span></span>
      </div>
      <p class="source">「ITの基礎知識あり」は幅のない目安（100時間前後）のため、薄い色で示しています。</p>
    </figure>

    <h3>レベル別の学習の重点</h3>
    <div class="who">
      <div>
        <div class="h">IT未経験・文系の方</div>
        <p>不安を感じやすいのはテクノロジ系ですが、問われるのは利用者として知っておくべき基礎です。用語と仕組みを押さえれば得点できます。業務で触れるストラテジ・マネジメント系は得点源になります。</p>
      </div>
      <div>
        <div class="h">ITの知識・実務経験がある方</div>
        <p>IT基礎の確認に加え、経営全般・法務・プロジェクト管理など、ストラテジ／マネジメント系の補強が中心になります。</p>
      </div>
    </div>

    <h3>勉強の進め方</h3>
    <ol class="points">
      <li><span class="n">POINT 1</span><b>過去問で出題傾向をつかむ</b><p>よく出るテーマは限られています。まず過去問に目を通し、学習範囲を絞りましょう。</p></li>
      <li><span class="n">POINT 2</span><b>苦手分野を残さない</b><p>3分野それぞれで300点以上が必要です。1分野だけ捨てるのは危険です。</p></li>
      <li><span class="n">POINT 3</span><b>計算は手計算で練習</b><p>電卓は持ち込めません。メモ用紙で解ける程度なので、過去問で慣れておけば十分です。</p></li>
      <li><span class="n">POINT 4</span><b>パソコンでの解答に慣れる</b><p>試験は画面で解答します。Web上の過去問サイトなどで画面での演習に慣れておきましょう。</p></li>
    </ol>
  </section>

  <!-- ================= 3. 申し込み手順 ================= -->
  <section id="apply">
    <h2><span class="no">3</span>詳細な申し込み手順</h2>
    <p class="point">試験日は決まっていません。公式サイトで、好きな会場・日時を選んで予約します。</p>
    <p>全国のテストセンターで、年間を通じてほぼ毎日（週末・平日）実施されています。申し込みはインターネットのみです。</p>

    <ol class="timeline">
      <li>
        <span class="pin">1</span>
        <b>「利用者ID」を登録する</b>
        <p><a href="https://www3.jitec.ipa.go.jp/JitesCbt/index.html" target="_blank" rel="noopener noreferrer">ITパスポート試験公式サイト</a>にアクセスし、初めての場合は「利用者ID」を新規登録します。</p>
      </li>
      <li>
        <span class="pin">2</span>
        <b>試験会場・日時を選ぶ</b>
        <p>マイページにログインし、全国47都道府県のテストセンターから「会場」「日付」「時間帯」を選びます。座席が空いていれば直前でも予約できます。</p>
        <div class="sub">予約できるのは3ヶ月先までです。</div>
      </li>
      <li>
        <span class="pin">3</span>
        <b>受験料を支払う</b>
        <p>受験料<strong>7,500円＋税</strong>を支払います。クレジットカード、コンビニ決済、ペイジー（銀行振込）から選べます。</p>
      </li>
      <li>
        <span class="pin">4</span>
        <b>確認票をダウンロードする</b>
        <p>支払いが完了すると予約が確定し、マイページから「確認票」をダウンロードできます。当日に必要です。</p>
      </li>
      <li>
        <span class="pin dark">当日</span>
        <b>試験を受ける</b>
        <div class="sub">
          <ul>
            <li>持ち物：確認票、顔写真付きの本人確認書類</li>
            <li>電卓は持ち込めません（メモ用紙と筆記用具は会場で配られます）</li>
            <li>試験終了直後に、画面で得点を確認できます</li>
          </ul>
        </div>
      </li>
      <li>
        <span class="pin dark">後</span>
        <b>合格発表・合格証書</b>
        <p>正式な合格発表は受験月の翌月15日前後、合格証書はさらに翌月15日前後に届きます。有効期限はありません。</p>
      </li>
    </ol>
  </section>

  <!-- ================= 4. 教材 ================= -->
  <section id="resources">
    <h2><span class="no">4</span>勉強するための教材</h2>
    <p class="point">現在利用できる無料の教材です。情報は随時更新します。</p>
    <ul class="resources">
      <li>
        <span class="tag">過去問</span>
        <span class="tt">過去問サイト「過去問道場」</span>
        <a class="url" href="https://www.itpassportsiken.com/ipkakomon.php" target="_blank" rel="noopener noreferrer">https://www.itpassportsiken.com/ipkakomon.php</a>
      </li>
      <li>
        <span class="tag">社内資料</span>
        <span class="tt">2022〜2023年に実施した社内勉強会資料</span>
        <a class="url" href="https://deecorp365.sharepoint.com/sites/projects/IT1/Forms/AllItems.aspx" target="_blank" rel="noopener noreferrer">https://deecorp365.sharepoint.com/sites/projects/IT1/Forms/AllItems.aspx</a>
        <ol>
          <li>FY22下期 シーズン1</li>
          <li>FY23下期 シーズン2</li>
        </ol>
      </li>
    </ul>
    <p class="note">※有償サービスやテキストなどに関しては、現在検討中です。</p>
  </section>

  <p class="refs">
    参考：IPA「ITパスポート試験」公式サイト／スタディング「ITパスポートとは？どんな資格か・難易度や取得メリットをわかりやすく解説」（2026年8月31日更新）。試験内容・日程は変更される場合があります。最新情報は公式サイトでご確認ください。
  </p>
  <p class="back"><a href="#top">↑ ページの先頭へ</a></p>

</div>
</body>
</html>
