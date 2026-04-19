<template>
  <section id="cta" class="cta">
    <div class="container">
      <div class="cta__card">
        <div class="cta__content">
          <div class="cta__badge">限時優惠</div>
          <h2 class="cta__title">立即開始 14 天免費體驗</h2>
          <p class="cta__desc">
            無需信用卡，無需複雜設定。5 分鐘完成註冊，立刻感受 EcoBridge 如何改變你的企業運營方式。
          </p>
          <div class="cta__actions">
            <a href="#" class="btn btn-accent btn-lg">免費開始使用</a>
            <a href="#" class="btn btn-ghost btn-lg cta__demo-btn">預約 Demo</a>
          </div>
          <div class="cta__features">
            <span v-for="f in freeFeatures" :key="f" class="cta__feature-item">
              <span class="cta__feature-check">✓</span> {{ f }}
            </span>
          </div>
        </div>

        <div class="cta__visual">
          <div class="cta__plan-card" v-for="plan in plans" :key="plan.name" :class="{ 'cta__plan-card--popular': plan.popular }">
            <div v-if="plan.popular" class="plan-popular-tag">最受歡迎</div>
            <div class="plan-name">{{ plan.name }}</div>
            <div class="plan-price">
              <span class="plan-price__value">{{ plan.price }}</span>
              <span class="plan-price__unit">{{ plan.unit }}</span>
            </div>
            <div class="plan-desc">{{ plan.desc }}</div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
const freeFeatures = ['全功能 14 天免費', '不限用戶數試用', '專屬導入顧問', '資料匯入協助']

const plans = [
  { name: '成長版', price: 'NT$1,990', unit: '/月起', desc: '適合 5-50 人團隊', popular: false },
  { name: '企業版', price: '客製報價', unit: '', desc: '無限用戶 · 專屬部署', popular: true }
]
</script>

<style scoped>
.cta {
  padding: var(--space-16) 0;
  background: #fff;
}

.cta__card {
  background: linear-gradient(135deg, var(--color-accent-light) 0%, #fff 60%);
  border: 1px solid var(--color-border);
  border-radius: var(--radius-xl);
  padding: var(--space-12);
  display: grid;
  grid-template-columns: 1fr auto;
  gap: var(--space-12);
  align-items: center;
  position: relative;
  overflow: hidden;
}

.cta__card::before {
  content: '';
  position: absolute;
  top: -80px;
  right: -80px;
  width: 300px;
  height: 300px;
  border-radius: 50%;
  background: radial-gradient(circle, rgba(122, 158, 136, 0.08) 0%, transparent 70%);
  pointer-events: none;
}

.cta__badge {
  display: inline-block;
  font-size: var(--font-size-caption);
  font-weight: var(--font-weight-medium);
  background: var(--color-accent);
  color: #fff;
  padding: var(--space-1) var(--space-3);
  border-radius: var(--radius-pill);
  margin-bottom: var(--space-4);
}

.cta__title {
  font-size: 30px;
  color: var(--color-text);
  margin-bottom: var(--space-4);
}

.cta__desc {
  font-size: 16px;
  color: var(--color-text-muted);
  line-height: 1.7;
  max-width: 480px;
  margin-bottom: var(--space-6);
}

.cta__actions {
  display: flex;
  gap: var(--space-4);
  margin-bottom: var(--space-6);
  flex-wrap: wrap;
}

.cta__demo-btn {
  color: var(--color-text-muted);
}

.cta__features {
  display: flex;
  flex-wrap: wrap;
  gap: var(--space-4);
}

.cta__feature-item {
  font-size: var(--font-size-caption);
  color: var(--color-text-muted);
  display: flex;
  align-items: center;
  gap: var(--space-1);
}

.cta__feature-check {
  color: var(--color-success);
  font-weight: var(--font-weight-medium);
}

/* Plan Cards */
.cta__visual {
  display: flex;
  flex-direction: column;
  gap: var(--space-3);
  min-width: 220px;
}

.cta__plan-card {
  background: #fff;
  border: 1px solid var(--color-border);
  border-radius: var(--radius-lg);
  padding: var(--space-4) var(--space-6);
  position: relative;
  transition: box-shadow var(--transition);
}

.cta__plan-card--popular {
  border-color: var(--color-primary);
  box-shadow: 0 0 0 2px rgba(122, 158, 136, 0.2);
}

.plan-popular-tag {
  position: absolute;
  top: -10px;
  left: 50%;
  transform: translateX(-50%);
  font-size: 11px;
  background: var(--color-primary);
  color: #fff;
  padding: 2px var(--space-3);
  border-radius: var(--radius-pill);
  white-space: nowrap;
}

.plan-name {
  font-size: var(--font-size-caption);
  color: var(--color-text-muted);
  font-weight: var(--font-weight-medium);
  margin-bottom: var(--space-1);
}

.plan-price {
  display: flex;
  align-items: baseline;
  gap: var(--space-1);
  margin-bottom: var(--space-1);
}

.plan-price__value {
  font-size: 20px;
  font-weight: var(--font-weight-medium);
  color: var(--color-text);
}

.plan-price__unit {
  font-size: var(--font-size-caption);
  color: var(--color-text-hint);
}

.plan-desc {
  font-size: var(--font-size-caption);
  color: var(--color-text-hint);
}

@media (max-width: 900px) {
  .cta__card {
    grid-template-columns: 1fr;
  }

  .cta__visual {
    flex-direction: row;
    min-width: auto;
  }

  .cta__plan-card {
    flex: 1;
  }
}

@media (max-width: 600px) {
  .cta__card {
    padding: var(--space-8) var(--space-6);
  }

  .cta__visual {
    flex-direction: column;
  }

  .cta__actions {
    flex-direction: column;
  }

  .btn-lg {
    width: 100%;
    justify-content: center;
  }
}
</style>
