<template>
  <section class="hero">
    <div class="container hero__inner">
      <div class="hero__content">
        <div class="hero__badge">
          <span class="badge-dot"></span>
          跨行業企業資訊整合平台
        </div>
        <h1 class="hero__title">
          資訊不再孤島<br />
          <span class="hero__title--accent">讓營運自動流動</span>
        </h1>
        <p class="hero__desc">
          EcoBridge 打通企業各部門、各系統之間的資訊壁壘，讓文件能溝通、流程能自動化，從製造到貿易、從業務到財務，一個平台全覆蓋。
        </p>
        <div class="hero__actions">
          <a href="#cta" class="btn btn-primary btn-lg">立即免費試用</a>
          <a href="#features" class="btn btn-ghost btn-lg">了解功能</a>
        </div>
        <p class="hero__note">免費 14 天 · 無需信用卡 · 隨時取消</p>
      </div>

      <div class="hero__visual">
        <div class="hero__card hero__card--main">
          <div class="hc-header">
            <span class="hc-dot hc-dot--green"></span>
            <span class="hc-label">業務訂單 → 倉庫出貨</span>
          </div>
          <div class="hc-flow">
            <div class="hc-step">業務確認</div>
            <div class="hc-arrow">→</div>
            <div class="hc-step hc-step--active">自動同步</div>
            <div class="hc-arrow">→</div>
            <div class="hc-step">倉庫備貨</div>
          </div>
          <div class="hc-status">
            <span class="status-badge">已節省 3.2 小時人工</span>
          </div>
        </div>

        <div class="hero__card hero__card--sub hero__card--sub-1">
          <div class="sub-icon">📊</div>
          <div class="sub-text">
            <div class="sub-title">即時數據看板</div>
            <div class="sub-val">+ 38% 效率提升</div>
          </div>
        </div>

        <div class="hero__card hero__card--sub hero__card--sub-2">
          <div class="sub-icon">🔗</div>
          <div class="sub-text">
            <div class="sub-title">跨系統串接</div>
            <div class="sub-val">13 個模組整合</div>
          </div>
        </div>
      </div>
    </div>

    <div class="hero__bg-shape hero__bg-shape--1"></div>
    <div class="hero__bg-shape hero__bg-shape--2"></div>
  </section>
</template>

<script setup>
</script>

<style scoped>
.hero {
  position: relative;
  padding: calc(64px + var(--space-16)) 0 var(--space-16);
  overflow: hidden;
}

.hero__inner {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: var(--space-12);
  align-items: center;
}

.hero__badge {
  display: inline-flex;
  align-items: center;
  gap: var(--space-2);
  font-size: var(--font-size-caption);
  font-weight: var(--font-weight-medium);
  color: var(--color-primary-dark);
  background: var(--color-primary-light);
  padding: var(--space-1) var(--space-3);
  border-radius: var(--radius-pill);
  margin-bottom: var(--space-4);
}

.badge-dot {
  width: 6px;
  height: 6px;
  border-radius: 50%;
  background: var(--color-primary);
}

.hero__title {
  font-size: 42px;
  font-weight: var(--font-weight-medium);
  color: var(--color-text);
  line-height: 1.2;
  margin-bottom: var(--space-4);
  letter-spacing: -0.5px;
}

.hero__title--accent {
  color: var(--color-primary-dark);
}

.hero__desc {
  font-size: 16px;
  color: var(--color-text-muted);
  line-height: 1.7;
  margin-bottom: var(--space-8);
  max-width: 480px;
}

.hero__actions {
  display: flex;
  gap: var(--space-4);
  flex-wrap: wrap;
  margin-bottom: var(--space-4);
}

.hero__note {
  font-size: var(--font-size-caption);
  color: var(--color-text-hint);
}

/* Visual */
.hero__visual {
  position: relative;
  height: 360px;
}

.hero__card {
  background: #fff;
  border-radius: var(--radius-lg);
  box-shadow: var(--shadow-md);
  border: 1px solid var(--color-border);
}

.hero__card--main {
  padding: var(--space-6);
  position: absolute;
  top: 40px;
  left: 0;
  right: 60px;
}

.hc-header {
  display: flex;
  align-items: center;
  gap: var(--space-2);
  margin-bottom: var(--space-4);
}

.hc-dot { width: 8px; height: 8px; border-radius: 50%; }
.hc-dot--green { background: var(--color-success); }
.hc-label { font-size: var(--font-size-caption); color: var(--color-text-muted); font-weight: var(--font-weight-medium); }

.hc-flow {
  display: flex;
  align-items: center;
  gap: var(--space-3);
  margin-bottom: var(--space-4);
}

.hc-step {
  flex: 1;
  text-align: center;
  padding: var(--space-2) var(--space-3);
  background: var(--color-surface);
  border-radius: var(--radius-sm);
  font-size: var(--font-size-caption);
  color: var(--color-text-muted);
}

.hc-step--active {
  background: var(--color-primary-light);
  color: var(--color-primary-dark);
  font-weight: var(--font-weight-medium);
}

.hc-arrow {
  color: var(--color-neutral);
  font-size: 14px;
}

.status-badge {
  display: inline-block;
  font-size: var(--font-size-caption);
  background: #e8f4ec;
  color: var(--color-success);
  padding: var(--space-1) var(--space-3);
  border-radius: var(--radius-pill);
  font-weight: var(--font-weight-medium);
}

.hero__card--sub {
  padding: var(--space-3) var(--space-4);
  display: flex;
  align-items: center;
  gap: var(--space-3);
  position: absolute;
}

.hero__card--sub-1 {
  bottom: 60px;
  left: 20px;
  min-width: 180px;
}

.hero__card--sub-2 {
  bottom: 0;
  right: 20px;
  min-width: 160px;
}

.sub-icon { font-size: 20px; }
.sub-title { font-size: var(--font-size-caption); color: var(--color-text-muted); }
.sub-val { font-size: 13px; font-weight: var(--font-weight-medium); color: var(--color-primary-dark); margin-top: 2px; }

/* BG Shapes */
.hero__bg-shape {
  position: absolute;
  border-radius: 50%;
  pointer-events: none;
}

.hero__bg-shape--1 {
  width: 600px;
  height: 600px;
  background: radial-gradient(circle, rgba(122, 158, 136, 0.08) 0%, transparent 70%);
  top: -200px;
  right: -100px;
}

.hero__bg-shape--2 {
  width: 400px;
  height: 400px;
  background: radial-gradient(circle, rgba(212, 168, 130, 0.08) 0%, transparent 70%);
  bottom: -100px;
  left: 0;
}

@media (max-width: 900px) {
  .hero__inner {
    grid-template-columns: 1fr;
  }

  .hero__visual {
    height: 280px;
  }

  .hero__title {
    font-size: 32px;
  }
}
</style>
