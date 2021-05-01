.class public final enum Lu/aly/aw;
.super Ljava/lang/Enum;
.source "Gender.java"

# interfaces
.implements Lu/aly/cl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/aw;",
        ">;",
        "Lu/aly/cl;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/aw;

.field public static final enum b:Lu/aly/aw;

.field public static final enum c:Lu/aly/aw;

.field private static final synthetic e:[Lu/aly/aw;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lu/aly/aw;

    const-string v1, "MALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lu/aly/aw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/aw;->a:Lu/aly/aw;

    .line 17
    new-instance v0, Lu/aly/aw;

    const-string v1, "FEMALE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lu/aly/aw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/aw;->b:Lu/aly/aw;

    .line 18
    new-instance v0, Lu/aly/aw;

    const-string v1, "UNKNOWN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lu/aly/aw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/aw;->c:Lu/aly/aw;

    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [Lu/aly/aw;

    sget-object v1, Lu/aly/aw;->a:Lu/aly/aw;

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/aw;->b:Lu/aly/aw;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/aw;->c:Lu/aly/aw;

    aput-object v1, v0, v4

    sput-object v0, Lu/aly/aw;->e:[Lu/aly/aw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lu/aly/aw;->d:I

    return-void
.end method

.method public static a(I)Lu/aly/aw;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :pswitch_0
    sget-object p0, Lu/aly/aw;->c:Lu/aly/aw;

    return-object p0

    .line 42
    :pswitch_1
    sget-object p0, Lu/aly/aw;->b:Lu/aly/aw;

    return-object p0

    .line 40
    :pswitch_2
    sget-object p0, Lu/aly/aw;->a:Lu/aly/aw;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/aw;
    .locals 1

    .line 15
    const-class v0, Lu/aly/aw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/aw;

    return-object p0
.end method

.method public static values()[Lu/aly/aw;
    .locals 1

    .line 15
    sget-object v0, Lu/aly/aw;->e:[Lu/aly/aw;

    invoke-virtual {v0}, [Lu/aly/aw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/aw;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 30
    iget v0, p0, Lu/aly/aw;->d:I

    return v0
.end method
