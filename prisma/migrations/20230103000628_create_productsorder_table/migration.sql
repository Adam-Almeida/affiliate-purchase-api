-- CreateTable
CREATE TABLE "products_orders" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "cod" TEXT NOT NULL,
    "qtd" INTEGER NOT NULL,
    "description" TEXT,
    "value" DOUBLE PRECISION NOT NULL,
    "fk_id_order" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "products_orders_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "products_orders_name_cod_idx" ON "products_orders"("name", "cod");

-- AddForeignKey
ALTER TABLE "products_orders" ADD CONSTRAINT "products_orders_fk_id_order_fkey" FOREIGN KEY ("fk_id_order") REFERENCES "orders"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
