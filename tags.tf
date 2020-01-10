# ===================== #
# Virtual Machines Tags #
# ===================== #

# Tag Categories #
resource "vsphere_tag_category" "tag-environment" {
    name        = "Environment"
    cardinality = "SINGLE"
    associable_types = [
        "VirtualMachine"
    ]
}

resource "vsphere_tag_category" "tag-application" {
    name        = "Application"
    cardinality = "SINGLE"
    associable_types = [
        "VirtualMachine"
    ]
}

# Tag Environment Variables #
resource "vsphere_tag" "tag-environment-dev" {
    name        = "dev"
    category_id = "${vsphere_tag_category.tag-environment.id}"
    description = "Development Environment"
}

resource "vsphere_tag" "tag-environment-test" {
    name        = "test"
    category_id = "${vsphere_tag_category.tag-environment.id}"
    description = "Test Environment"
}

resource "vsphere_tag" "tag-environment-prod" {
    name        = "prod"
    category_id = "${vsphere_tag_category.tag-environment.id}"
    description = "Production Environment"
}

# Tag Application Variables #
resource "vsphere_tag" "tag-application-k8s" {
    name        = "kubernetes"
    category_id = "${vsphere_tag_category.tag-application.id}"
    description = "Kubernetes Infrastructure"
}

resource "vsphere_tag" "tag-application-web-server" {
    name        = "web server"
    category_id = "${vsphere_tag_category.tag-application.id}"
    description = "Web Server"
}
