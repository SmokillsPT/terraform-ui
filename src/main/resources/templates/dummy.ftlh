<#import "components/components.ftlh" as c>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="SB Admin 2 Bootstrap 5 upgraded interactive dashboard with Spring Boot and Freemarker.">
    <title>SB Admin 5 - Premium Dashboard</title>

    <!-- Google Fonts - Outfit & Inter -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Outfit:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <!-- FontAwesome 6 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <!-- Premium Custom Styles served from static CSS -->
    <link href="/css/dashboard.css" rel="stylesheet">
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar (Utilizing Freemarker Macro from Aggregator) -->
        <@c.sidebar activePage="dashboard" />

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column flex-grow-1">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar (Utilizing Freemarker Macro from Aggregator) -->
                <@c.topbar dummyValue=dummy.hello />

                <!-- Begin Page Content -->
                <div class="container-fluid px-4">

                    <!-- Custom Reusable Alert demonstration -->
                    <div class="mt-2 mb-3">
                        <@c.alert type="success" message="Welcome to the fully modular SB Admin 2 clone! Decoupled using clean Freemarker includes and SCSS styling." dismissible=true />
                    </div>

                    <!-- Page Heading Row -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-slate-800 fw-bold fs-2">Dashboard</h1>
                        <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-indigo shadow-sm" onclick="alert('Generating SB Admin report...');">
                            <i class="fas fa-download fa-sm text-white-50 me-1"></i> Generate Report
                        </a>
                    </div>

                    <!-- Interactive REST API Demo Control Panel -->
                    <div class="card shadow-sm mb-4 border-0" style="border-radius: 12px; background: linear-gradient(135deg, #e0e7ff 0%, #c7d2fe 100%);">
                        <div class="card-body p-4">
                            <div class="row align-items-center">
                                <div class="col-lg-8">
                                    <h4 class="fw-bold text-indigo mb-1"><i class="fas fa-network-wired me-2"></i>Interactive Dummy Controller Demonstration</h4>
                                    <p class="text-slate-600 mb-0">
                                        This template dynamically displays the current value of the in-memory **Dummy** mock state. 
                                        You can interact with the **Service** and **Repository** using REST operations below!
                                    </p>
                                </div>
                                <div class="col-lg-4 text-lg-end mt-3 mt-lg-0">
                                    <!-- Modal Trigger Button -->
                                    <button class="btn btn-indigo shadow-sm me-2" data-bs-toggle="modal" data-bs-target="#editDummyModal">
                                        <i class="fas fa-edit me-1"></i> Update Dummy State
                                    </button>
                                    <!-- Custom Reusable Button Component for resetting -->
                                    <@c.button label="Reset State" class="btn-outline-danger bg-white" icon="fas fa-undo" onclick="resetDummyState()" />
                                </div>
                            </div>
                            <div class="mt-3 p-3 bg-white rounded shadow-sm d-flex align-items-center justify-content-between" style="border-left: 4px solid #4f46e5;">
                                <div>
                                    <span class="text-secondary small text-uppercase fw-bold">Live In-Memory State Payload:</span>
                                    <code class="d-block mt-1 fs-5 fw-bold text-dark" id="live-dummy-payload">{ "hello": "${dummy.hello}" }</code>
                                </div>
                                <div>
                                    <span class="badge bg-success py-2 px-3 rounded-pill"><i class="fas fa-circle-check me-1"></i> Active mock db session</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Stats Cards Row (Utilizing Freemarker Card Macro) -->
                    <div class="row">
                        <@c.statCard title="Earnings (Monthly)" value="$40,000" borderClass="primary" textClass="primary" iconClass="fas fa-calendar" />
                        <@c.statCard title="Earnings (Annual)" value="$215,000" borderClass="success" textClass="success" iconClass="fas fa-dollar-sign" />
                        <@c.statCard title="Tasks" value="50%" borderClass="info" textClass="info" iconClass="fas fa-clipboard-list" progressVal=50 />
                        <@c.statCard title="Pending Requests" value="18" borderClass="warning" textClass="warning" iconClass="fas fa-comments" />
                    </div>

                    <!-- Charts Row -->
                    <div class="row">

                        <!-- Area Chart -->
                        <div class="col-xl-8 col-lg-7">
                            <@c.detailCard title="Earnings Overview">
                                <div class="chart-area">
                                    <canvas id="myAreaChart"></canvas>
                                </div>
                            </@c.detailCard>
                        </div>

                        <!-- Pie Chart -->
                        <div class="col-xl-4 col-lg-5">
                            <@c.detailCard title="Revenue Sources">
                                <div class="chart-pie pt-4 pb-2">
                                    <canvas id="myPieChart"></canvas>
                                </div>
                                <div class="mt-4 text-center small">
                                    <span class="me-2">
                                        <i class="fas fa-circle text-primary"></i> Direct
                                    </span>
                                    <span class="me-2">
                                        <i class="fas fa-circle text-success"></i> Social
                                    </span>
                                    <span class="me-2">
                                        <i class="fas fa-circle text-info"></i> Referral
                                    </span>
                                </div>
                            </@c.detailCard>
                        </div>
                    </div>

                    <!-- Page Components Section -->
                    <div class="row">

                        <!-- Left Column (Projects and Colors) -->
                        <div class="col-lg-6 mb-4">

                            <!-- Project Card (Utilizing Freemarker nested detailCard and progressBar Macros) -->
                            <@c.detailCard title="Projects">
                                <@c.progressBar label="Server Migration" value="20%" bgClass="bg-danger" />
                                <@c.progressBar label="Sales Tracking" value="40%" bgClass="bg-warning" />
                                <@c.progressBar label="Customer Database" value="60%" bgClass="bg-gradient-indigo" />
                                <@c.progressBar label="Payout Details" value="80%" bgClass="bg-info" />
                                <@c.progressBar label="Account Setup" value="100%" bgClass="bg-success" />
                            </@c.detailCard>

                            <!-- Color System Row -->
                            <div class="row">
                                <@c.colorCard name="Primary" hex="#4e73df" bgClass="bg-primary" />
                                <@c.colorCard name="Success" hex="#1cc88a" bgClass="bg-success" />
                                <@c.colorCard name="Info" hex="#36b9cc" bgClass="bg-info" />
                                <@c.colorCard name="Warning" hex="#f6c23e" bgClass="bg-warning" textClass="text-dark" />
                                <@c.colorCard name="Danger" hex="#e74a3b" bgClass="bg-danger" />
                                <@c.colorCard name="Secondary" hex="#858796" bgClass="bg-secondary" />
                                <@c.colorCard name="Light" hex="#f8f9fc" bgClass="bg-light" textClass="text-dark border" />
                                <@c.colorCard name="Dark" hex="#5a5c69" bgClass="bg-dark" />
                            </div>

                        </div>

                        <!-- Right Column (Illustrations and Details) -->
                        <div class="col-lg-6 mb-4">

                            <!-- Illustrations Card -->
                            <@c.detailCard title="Illustrations">
                                <div class="text-center">
                                    <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" src="https://illustrations.popsy.co/illustrations/dashboard.svg" alt="...">
                                </div>
                                <p class="mb-0">
                                    Add some quality, svg illustrations to your project courtesy of <a target="_blank" rel="nofollow" href="https://undraw.co/">unDraw</a>, a constantly updated collection of beautiful svg images that you can use completely free and without attribution!
                                </p>
                            </@c.detailCard>

                            <!-- Development Approach Card -->
                            <@c.detailCard title="Development Approach">
                                <p>
                                    SB Admin 2 uses powerful, modular utilities to build premium responsive pages. Upgraded to Bootstrap 5 in this codebase, we rely on responsive utility classes, flexbox wrappers, custom macro components, and lightweight custom styles to keep rendering extremely fast.
                                </p>
                                <p class="mb-0">
                                    By building standard, reusable macro configurations in **Freemarker**, we successfully decoupled design layout structures from main contents, creating a robust framework for Spring Boot presentation layers.
                                </p>
                            </@c.detailCard>

                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <@c.footer />

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded position-fixed bottom-4 end-4 text-white text-center d-none" href="#page-top" style="width: 2.75rem; height: 2.75rem; line-height: 2.75rem; background: rgba(90, 92, 105, 0.5); z-index: 1000;" id="scrollTopBtn">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Edit Dummy State Modal (Using Freemarker Modal Macro) -->
    <#assign editFooterHtml>
        <button type="button" class="btn btn-secondary shadow-sm" data-bs-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-indigo shadow-sm" onclick="saveDummyState()">Save changes</button>
    </#assign>

    <@c.modal id="editDummyModal" title="Update Mock Dummy State" footerHtml=editFooterHtml>
        <form id="editDummyForm">
            <div class="mb-3">
                <label for="dummyHelloInput" class="form-label font-weight-bold text-dark">Value of "hello" property</label>
                <input type="text" class="form-control py-2" id="dummyHelloInput" value="${dummy.hello}" placeholder="Enter new mock text...">
                <div class="form-text text-secondary mt-2">
                    Saving this will dispatch a `PUT` REST operation to the `DummyRestController` that invokes the mock `DummyService` and atomic memory `DummyRepository`.
                </div>
            </div>
        </form>
    </@c.modal>

    <!-- Logout Modal (Using Freemarker Modal Macro) -->
    <#assign logoutFooterHtml>
        <button class="btn btn-secondary shadow-sm" type="button" data-bs-dismiss="modal">Cancel</button>
        <a class="btn btn-indigo shadow-sm" href="#" onclick="alert('Simulated logout successfully!');">Logout</a>
    </#assign>

    <@c.modal id="logoutModal" title="Ready to Leave?" footerHtml=logoutFooterHtml>
        Select "Logout" below if you are ready to end your current session.
    </@c.modal>

    <!-- Bootstrap 5 JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <!-- Chart.js CDN -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <script>
        // Toggle Sidebar Action
        document.getElementById('sidebarToggle').addEventListener('click', function() {
            document.querySelector('.sidebar').classList.toggle('toggled');
        });
        document.getElementById('sidebarToggleTop').addEventListener('click', function() {
            document.querySelector('.sidebar').classList.toggle('toggled');
        });

        // Scroll to top button visibility
        window.addEventListener('scroll', function() {
            var scrollBtn = document.getElementById('scrollTopBtn');
            if (window.scrollY > 200) {
                scrollBtn.classList.remove('d-none');
            } else {
                scrollBtn.classList.add('d-none');
            }
        });

        // REST operation: Save/Update Dummy State via PUT
        function saveDummyState() {
            const helloValue = document.getElementById('dummyHelloInput').value;
            
            fetch('/dummy', {
                method: 'PUT',
                headers: {
                    'Content-Type': 'application/json',
                    'Accept': 'application/json'
                },
                body: JSON.stringify({ hello: helloValue })
            })
            .then(res => {
                if (!res.ok) throw new Error('API request failed');
                return res.json();
            })
            .then(data => {
                // Update live text on screen
                document.getElementById('live-dummy-payload').innerText = JSON.stringify(data);
                document.getElementById('dummy-state-badge').innerText = 'hello: ' + data.hello;
                
                // Hide modal and refresh
                const editModal = bootstrap.Modal.getInstance(document.getElementById('editDummyModal'));
                editModal.hide();
                
                // Toast or direct page reload
                window.location.reload();
            })
            .catch(err => {
                alert('Error updating state: ' + err.message);
            });
        }

        // REST operation: Reset Dummy State via DELETE
        function resetDummyState() {
            fetch('/dummy', {
                method: 'DELETE',
                headers: {
                    'Accept': 'application/json'
                }
            })
            .then(res => {
                if (!res.ok) throw new Error('API request failed');
                return res.json();
            })
            .then(data => {
                const currentDummy = data.dummy;
                document.getElementById('live-dummy-payload').innerText = JSON.stringify(currentDummy);
                document.getElementById('dummy-state-badge').innerText = 'hello: ' + currentDummy.hello;
                window.location.reload();
            })
            .catch(err => {
                alert('Error resetting state: ' + err.message);
            });
        }

        // --- Render Charts utilizing Chart.js ---
        document.addEventListener("DOMContentLoaded", function() {
            // Area Chart - Earnings Overview
            const ctxArea = document.getElementById('myAreaChart').getContext('2d');
            const gradArea = ctxArea.createLinearGradient(0, 0, 0, 320);
            gradArea.addColorStop(0, 'rgba(79, 70, 229, 0.2)');
            gradArea.addColorStop(1, 'rgba(79, 70, 229, 0.0)');

            new Chart(ctxArea, {
                type: 'line',
                data: {
                    labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
                    datasets: [{
                        label: "Earnings",
                        lineTension: 0.3,
                        backgroundColor: gradArea,
                        borderColor: "#4f46e5",
                        borderWidth: 3,
                        pointRadius: 4,
                        pointBackgroundColor: "#4f46e5",
                        pointBorderColor: "#ffffff",
                        pointHoverRadius: 6,
                        pointHoverBackgroundColor: "#4f46e5",
                        pointHoverBorderColor: "#ffffff",
                        pointHitRadius: 10,
                        pointBorderWidth: 2,
                        data: [0, 10000, 5000, 15000, 10000, 20000, 15000, 25000, 20000, 30000, 25000, 40000],
                    }],
                },
                options: {
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        x: {
                            grid: {
                                display: false,
                                drawBorder: false
                            },
                            ticks: {
                                color: '#94a3b8'
                            }
                        },
                        y: {
                            ticks: {
                                callback: function(value) {
                                    return '$' + value.toLocaleString();
                                },
                                color: '#94a3b8'
                            },
                            grid: {
                                color: '#f1f5f9',
                                drawBorder: false
                            }
                        }
                    }
                }
            });

            // Pie Chart - Revenue Sources
            const ctxPie = document.getElementById('myPieChart').getContext('2d');
            new Chart(ctxPie, {
                type: 'doughnut',
                data: {
                    labels: ["Direct", "Referral", "Social"],
                    datasets: [{
                        data: [55, 30, 15],
                        backgroundColor: ['#4f46e5', '#36b9cc', '#1cc88a'],
                        hoverBackgroundColor: ['#4338ca', '#2c9faf', '#17a673'],
                        hoverBorderColor: "rgba(234, 236, 244, 1)",
                    }],
                },
                options: {
                    maintainAspectRatio: false,
                    cutout: '80%',
                    plugins: {
                        legend: {
                            display: false
                        }
                    }
                }
            });
        });
    </script>
</body>
</html>
