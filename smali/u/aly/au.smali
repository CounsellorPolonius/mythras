.class public final enum Lu/aly/au;
.super Ljava/lang/Enum;
.source "ErrorSource.java"

# interfaces
.implements Lu/aly/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/au;",
        ">;",
        "Lu/aly/cl;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/au;

.field public static final enum b:Lu/aly/au;

.field private static final synthetic d:[Lu/aly/au;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lu/aly/au;

    const-string v1, "LEGIT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/au;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/au;->a:Lu/aly/au;

    .line 17
    new-instance v0, Lu/aly/au;

    const-string v1, "ALIEN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lu/aly/au;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/au;->b:Lu/aly/au;

    .line 15
    new-array v0, v4, [Lu/aly/au;

    sget-object v1, Lu/aly/au;->a:Lu/aly/au;

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/au;->b:Lu/aly/au;

    aput-object v1, v0, v3

    sput-object v0, Lu/aly/au;->d:[Lu/aly/au;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lu/aly/au;->c:I

    return-void
.end method

.method public static a(I)Lu/aly/au;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 41
    :pswitch_0
    sget-object p0, Lu/aly/au;->b:Lu/aly/au;

    return-object p0

    .line 39
    :pswitch_1
    sget-object p0, Lu/aly/au;->a:Lu/aly/au;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/au;
    .locals 1

    .line 15
    const-class v0, Lu/aly/au;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/au;

    return-object p0
.end method

.method public static values()[Lu/aly/au;
    .locals 1

    .line 15
    sget-object v0, Lu/aly/au;->d:[Lu/aly/au;

    invoke-virtual {v0}, [Lu/aly/au;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/au;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 29
    iget v0, p0, Lu/aly/au;->c:I

    return v0
.end method
