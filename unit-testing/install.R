# Install all required packages for this example
required_packages <- c("devtools", "testthat")
installed_packages <- installed.packages()[,1]
to_install <- setdiff(required_packages, installed_packages)

if (length(to_install) > 0) {
	print("Installing required packages")
	install.packages(to_install, 
		repos = "https://cloud.r-project.org")
} else {
	print("Required packages already installed")
}
