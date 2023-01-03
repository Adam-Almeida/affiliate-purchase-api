-- CreateTable
CREATE TABLE "categories" (
    "id" TEXT NOT NULL,
    "category" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "categories_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "categories_category_idx" ON "categories"("category");

-- AddForeignKey
ALTER TABLE "categories_products" ADD CONSTRAINT "categories_products_fk_id_category_fkey" FOREIGN KEY ("fk_id_category") REFERENCES "categories"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
