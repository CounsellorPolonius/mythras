.class public final enum Lu/aly/bl$e;
.super Ljava/lang/Enum;
.source "Session.java"

# interfaces
.implements Lu/aly/co;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/bl$e;",
        ">;",
        "Lu/aly/co;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/bl$e;

.field public static final enum b:Lu/aly/bl$e;

.field public static final enum c:Lu/aly/bl$e;

.field public static final enum d:Lu/aly/bl$e;

.field public static final enum e:Lu/aly/bl$e;

.field public static final enum f:Lu/aly/bl$e;

.field public static final enum g:Lu/aly/bl$e;

.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/bl$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic k:[Lu/aly/bl$e;


# instance fields
.field private final i:S

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 59
    new-instance v0, Lu/aly/bl$e;

    const-string v1, "ID"

    const-string v2, "id"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/bl$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bl$e;->a:Lu/aly/bl$e;

    .line 60
    new-instance v0, Lu/aly/bl$e;

    const-string v1, "START_TIME"

    const-string v2, "start_time"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/bl$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bl$e;->b:Lu/aly/bl$e;

    .line 61
    new-instance v0, Lu/aly/bl$e;

    const-string v1, "END_TIME"

    const-string v2, "end_time"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/bl$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bl$e;->c:Lu/aly/bl$e;

    .line 62
    new-instance v0, Lu/aly/bl$e;

    const-string v1, "DURATION"

    const-string v2, "duration"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/bl$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bl$e;->d:Lu/aly/bl$e;

    .line 63
    new-instance v0, Lu/aly/bl$e;

    const-string v1, "PAGES"

    const-string v2, "pages"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/bl$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bl$e;->e:Lu/aly/bl$e;

    .line 64
    new-instance v0, Lu/aly/bl$e;

    const-string v1, "LOCATIONS"

    const-string v2, "locations"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v8, v9, v2}, Lu/aly/bl$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bl$e;->f:Lu/aly/bl$e;

    .line 65
    new-instance v0, Lu/aly/bl$e;

    const-string v1, "TRAFFIC"

    const-string v2, "traffic"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v9, v10, v2}, Lu/aly/bl$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/bl$e;->g:Lu/aly/bl$e;

    .line 58
    new-array v0, v10, [Lu/aly/bl$e;

    sget-object v1, Lu/aly/bl$e;->a:Lu/aly/bl$e;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/bl$e;->b:Lu/aly/bl$e;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/bl$e;->c:Lu/aly/bl$e;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/bl$e;->d:Lu/aly/bl$e;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/bl$e;->e:Lu/aly/bl$e;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/bl$e;->f:Lu/aly/bl$e;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/bl$e;->g:Lu/aly/bl$e;

    aput-object v1, v0, v9

    sput-object v0, Lu/aly/bl$e;->k:[Lu/aly/bl$e;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bl$e;->h:Ljava/util/Map;

    .line 70
    const-class v0, Lu/aly/bl$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/aly/bl$e;

    .line 71
    sget-object v2, Lu/aly/bl$e;->h:Ljava/util/Map;

    invoke-virtual {v1}, Lu/aly/bl$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput-short p3, p0, Lu/aly/bl$e;->i:S

    .line 121
    iput-object p4, p0, Lu/aly/bl$e;->j:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lu/aly/bl$e;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 93
    :pswitch_0
    sget-object p0, Lu/aly/bl$e;->g:Lu/aly/bl$e;

    return-object p0

    .line 91
    :pswitch_1
    sget-object p0, Lu/aly/bl$e;->f:Lu/aly/bl$e;

    return-object p0

    .line 89
    :pswitch_2
    sget-object p0, Lu/aly/bl$e;->e:Lu/aly/bl$e;

    return-object p0

    .line 87
    :pswitch_3
    sget-object p0, Lu/aly/bl$e;->d:Lu/aly/bl$e;

    return-object p0

    .line 85
    :pswitch_4
    sget-object p0, Lu/aly/bl$e;->c:Lu/aly/bl$e;

    return-object p0

    .line 83
    :pswitch_5
    sget-object p0, Lu/aly/bl$e;->b:Lu/aly/bl$e;

    return-object p0

    .line 81
    :pswitch_6
    sget-object p0, Lu/aly/bl$e;->a:Lu/aly/bl$e;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lu/aly/bl$e;
    .locals 1

    .line 113
    sget-object v0, Lu/aly/bl$e;->h:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/aly/bl$e;

    return-object p0
.end method

.method public static b(I)Lu/aly/bl$e;
    .locals 3

    .line 104
    invoke-static {p0}, Lu/aly/bl$e;->a(I)Lu/aly/bl$e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t exist!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/bl$e;
    .locals 1

    .line 58
    const-class v0, Lu/aly/bl$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/bl$e;

    return-object p0
.end method

.method public static values()[Lu/aly/bl$e;
    .locals 1

    .line 58
    sget-object v0, Lu/aly/bl$e;->k:[Lu/aly/bl$e;

    invoke-virtual {v0}, [Lu/aly/bl$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bl$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 125
    iget-short v0, p0, Lu/aly/bl$e;->i:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lu/aly/bl$e;->j:Ljava/lang/String;

    return-object v0
.end method
