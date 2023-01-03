-- CreateEnum
CREATE TYPE "OrderStatus" AS ENUM ('OPEN', 'FINISHED');

-- CreateTable
CREATE TABLE "orders" (
    "id" TEXT NOT NULL,
    "generate_cod" TEXT NOT NULL,
    "status" "OrderStatus" NOT NULL DEFAULT 'OPEN',
    "note" TEXT,
    "total_value" DOUBLE PRECISION NOT NULL,
    "qtd_recurences" INTEGER NOT NULL,
    "value_recurences" INTEGER NOT NULL,
    "date_payment" TIMESTAMP(3) NOT NULL,
    "descount_percent" INTEGER NOT NULL,
    "descount_value" DOUBLE PRECISION NOT NULL,
    "fk_id_user" TEXT NOT NULL,
    "fk_id_store" TEXT NOT NULL,
    "fk_id_collaborator" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "orders_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "orders_status_id_generate_cod_idx" ON "orders"("status", "id", "generate_cod");

-- AddForeignKey
ALTER TABLE "orders" ADD CONSTRAINT "orders_fk_id_user_fkey" FOREIGN KEY ("fk_id_user") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders" ADD CONSTRAINT "orders_fk_id_store_fkey" FOREIGN KEY ("fk_id_store") REFERENCES "stores"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "orders" ADD CONSTRAINT "orders_fk_id_collaborator_fkey" FOREIGN KEY ("fk_id_collaborator") REFERENCES "collaborators"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
