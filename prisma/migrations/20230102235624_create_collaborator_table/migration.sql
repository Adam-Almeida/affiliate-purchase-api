-- CreateTable
CREATE TABLE "collaborators" (
    "id" TEXT NOT NULL,
    "admission" TIMESTAMP(3) NOT NULL,
    "work_function" TEXT,
    "work_sector" TEXT,
    "payment_amount" DECIMAL(65,30) NOT NULL,
    "payment_date_limit" TIMESTAMP(3) NOT NULL,
    "date_discount_payment" TIMESTAMP(3) NOT NULL,
    "aproved_value" DOUBLE PRECISION NOT NULL,
    "aproved_recurrences" INTEGER NOT NULL,
    "regularity" BOOLEAN NOT NULL,
    "note" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "collaborators_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE INDEX "collaborators_work_function_work_sector_regularity_idx" ON "collaborators"("work_function", "work_sector", "regularity");
