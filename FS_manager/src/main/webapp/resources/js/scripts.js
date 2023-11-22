// scripts.js

// 그래프 데이터
const monthlySalesData = {
    labels: ['1월', '2월', '3월', '4월', '5월', '6월', '7월'],
    datasets: [
        {
            label: '월별 매출',
            data: [5000, 7000, 6000, 8000, 7500, 9000, 8500],
            fill: false,
            borderColor: 'rgba(75, 192, 192, 1)',
            borderWidth: 2,
        },
    ],
};

const monthlyExpensesData = {
    labels: ['장비 구비', '파손 복구', '장비 수리', '기타'],
    datasets: [
        {
            label: '월별 비용',
            data: [48.1, 22.8, 25.6, 3.5],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
            ],
            borderWidth: 1,
        },
    ],
};

const topCustomersData = {
    labels: ['고객 1', '고객 2', '고객 3', '고객 4', '고객 5'],
    datasets: [
        {
            label: '주문 수',
            data: [15, 12, 10, 8, 5],
            backgroundColor: 'rgba(153, 102, 255, 0.2)',
            borderColor: 'rgba(153, 102, 255, 1)',
            borderWidth: 1,
        },
    ],
};

// 그래프 생성 및 표시 함수
function createAndRenderCharts() {
    const monthlySalesChart = new Chart(document.getElementById('monthlySalesChart'), {
        type: 'line',
        data: monthlySalesData,
        options: {
            responsive: true, // 반응형 활성화
            maintainAspectRatio: false, // true로 설정하면 종횡비 유지 (선택 사항)
            plugins: {
                legend: {
                    position: 'bottom',
                },
                title: {
                    display: true,
                    text: '월별 매출', // 제목 추가
                },
            },
        },
    });
    

    const monthlyExpensesChart = new Chart(document.getElementById('monthlyExpensesChart'), {
        type: 'doughnut',
        data: monthlyExpensesData,
        options: {
            responsive: true, // 반응형 활성화
            maintainAspectRatio: false, // true로 설정하면 종횡비 유지 (선택 사항)
            plugins: {
                legend: {
                    position: 'right',
                },
                title: {
                    display: true,
                    text: '월별 비용', // 제목 추가
                },
            },
        },
    });
    

    const barChart = new Chart(document.getElementById('barChart'), {
        type: 'bar',
        data: topCustomersData,
        options: {
            maintainAspectRatio: false, // false로 설정
            responsive: true, // 반응형 활성화
            scales: {
                x: {
                    beginAtZero: true
                },
                y: {
                    beginAtZero: true
                }
            },
            plugins: {
                legend: {
                    position: 'bottom',
                },
                title: {
                    display: true,
                    text: '주문 수', // 제목 추가
                },
            },
        },
    });
    
}

// 호출하여 그래프 생성 및 표시
createAndRenderCharts();