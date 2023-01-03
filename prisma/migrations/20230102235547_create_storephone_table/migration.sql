-- CreateTable
CREATE TABLE "store_phones" (
    "id" TEXT NOT NULL,
    "ddd" INTEGER NOT NULL,
    "phone" TEXT NOT NULL,
    "type" "PhoneType" NOT NULL DEFAULT 'FIXED',
    "fk_id_store" TEXT NOT NULL,

    CONSTRAINT "store_phones_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "store_phones_phone_key" ON "store_phones"("phone");

-- CreateIndex
CREATE INDEX "store_phones_ddd_phone_idx" ON "store_phones"("ddd", "phone");

-- AddForeignKey
ALTER TABLE "store_phones" ADD CONSTRAINT "store_phones_fk_id_store_fkey" FOREIGN KEY ("fk_id_store") REFERENCES "stores"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
