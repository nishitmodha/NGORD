class Certificate < ApplicationRecord
    enum certificate_type: { design_type: 3, construction_type: 1, operations_type: 2 }
end
