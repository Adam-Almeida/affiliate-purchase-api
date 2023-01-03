-- CreateEnum
CREATE TYPE "StoreType" AS ENUM ('MATRIZ', 'FILIAL');

-- CreateTable
CREATE TABLE "stores" (
    "id" TEXT NOT NULL,
    "store_type" "StoreType" NOT NULL DEFAULT 'MATRIZ',
    "social_name" TEXT NOT NULL,
    "fantasy_name" TEXT,
    "cnpj" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "fk_id_address" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "stores_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "stores_cnpj_key" ON "stores"("cnpj");

-- CreateIndex
CREATE UNIQUE INDEX "stores_email_key" ON "stores"("email");

-- CreateIndex
CREATE INDEX "stores_cnpj_idx" ON "stores"("cnpj");

-- AddForeignKey
ALTER TABLE "stores" ADD CONSTRAINT "stores_fk_id_address_fkey" FOREIGN KEY ("fk_id_address") REFERENCES "addresses"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
