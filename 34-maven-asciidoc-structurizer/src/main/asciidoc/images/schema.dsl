workspace {

    model {
        user = person "User"
        softwareSystem = softwareSystem "Software System" {
            webapp = container "Web Application" {
                user -> this "Uses!!!"
            }
            database = container "Database" {
                webapp -> this "Reads from and writes to"
            }
            redis = container "Redis" {
               webapp -> this "Cache read and write"
            }
        }
    }

    views {
        container softwareSystem {
            include *
            autolayout lr
        }
        theme default
    }

}
