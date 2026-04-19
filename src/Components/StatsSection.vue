<template>
  <section id="stats" class="stats">
    <div class="container">
      <div class="stats__grid">
        <div v-for="stat in stats" :key="stat.label" class="stat-card">
          <div class="stat-card__value">{{ stat.value }}</div>
          <div class="stat-card__label">{{ stat.label }}</div>
          <div class="stat-card__desc">{{ stat.desc }}</div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
const stats = [
  { value: '2,400+', label: '企業用戶', desc: '橫跨台灣、大陸、日本、東南亞' },
  { value: '13', label: '業務模組', desc: '涵蓋從行銷到財務全流程' },
  { value: '38%', label: '平均效率提升', desc: '導入 6 個月後的客戶數據' },
  { value: '99.9%', label: 'SLA 可用率', desc: '企業級穩定性保障' }
]
</script>

<style scoped>
.stats {
  padding: var(--space-16) 0;
  background: linear-gradient(135deg, var(--color-primary-dark) 0%, #2A4038 100%);
  position: relative;
  overflow: hidden;
}

.stats::before {
  content: '';
  position: absolute;
  inset: 0;
  background: url("data:image/svg+xml,%3Csvg width='60' height='60' viewBox='0 0 60 60' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cg fill='%23ffffff' fill-opacity='0.03'%3E%3Cpath d='M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
}

.stats__grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: var(--space-2);
  position: relative;
}

.stat-card {
  text-align: center;
  padding: var(--space-8) var(--space-6);
  border-right: 1px solid rgba(255, 255, 255, 0.1);
}

.stat-card:last-child {
  border-right: none;
}

.stat-card__value {
  font-size: 44px;
  font-weight: var(--font-weight-medium);
  color: var(--color-accent);
  line-height: 1;
  margin-bottom: var(--space-2);
  letter-spacing: -1px;
}

.stat-card__label {
  font-size: var(--font-size-h3);
  font-weight: var(--font-weight-medium);
  color: #fff;
  margin-bottom: var(--space-1);
}

.stat-card__desc {
  font-size: var(--font-size-caption);
  color: rgba(255, 255, 255, 0.55);
  line-height: 1.5;
}

@media (max-width: 768px) {
  .stats__grid {
    grid-template-columns: repeat(2, 1fr);
  }

  .stat-card {
    border-right: none;
    border-bottom: 1px solid rgba(255, 255, 255, 0.1);
    padding: var(--space-6);
  }

  .stat-card:nth-child(1),
  .stat-card:nth-child(2) {
    border-right: 1px solid rgba(255, 255, 255, 0.1);
  }
}

@media (max-width: 480px) {
  .stats__grid {
    grid-template-columns: 1fr;
  }

  .stat-card:nth-child(1),
  .stat-card:nth-child(2) {
    border-right: none;
  }

  .stat-card__value {
    font-size: 36px;
  }
}
</style>
