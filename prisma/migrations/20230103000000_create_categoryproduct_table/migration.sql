-- CreateTable
CREATE TABLE "categories_products" (
    "id" TEXT NOT NULL,
    "fk_id_category" TEXT NOT NULL,
    "fk_id_product" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "categories_products_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "categories_products" ADD CONSTRAINT "categories_products_fk_id_product_fkey" FOREIGN KEY ("fk_id_product") REFERENCES "products"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
