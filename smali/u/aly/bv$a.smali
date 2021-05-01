.class public final enum Lu/aly/bv$a;
.super Ljava/lang/Enum;
.source "ReportResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/bv$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/bv$a;

.field public static final enum b:Lu/aly/bv$a;

.field private static final synthetic c:[Lu/aly/bv$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lu/aly/bv$a;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu/aly/bv$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/aly/bv$a;->a:Lu/aly/bv$a;

    new-instance v0, Lu/aly/bv$a;

    const-string v1, "FAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lu/aly/bv$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/aly/bv$a;->b:Lu/aly/bv$a;

    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [Lu/aly/bv$a;

    sget-object v1, Lu/aly/bv$a;->a:Lu/aly/bv$a;

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/bv$a;->b:Lu/aly/bv$a;

    aput-object v1, v0, v3

    sput-object v0, Lu/aly/bv$a;->c:[Lu/aly/bv$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/bv$a;
    .locals 1

    .line 1
    const-class v0, Lu/aly/bv$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/bv$a;

    return-object p0
.end method

.method public static values()[Lu/aly/bv$a;
    .locals 4

    .line 1
    sget-object v0, Lu/aly/bv$a;->c:[Lu/aly/bv$a;

    array-length v1, v0

    new-array v2, v1, [Lu/aly/bv$a;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
