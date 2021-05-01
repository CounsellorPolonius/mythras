.class public final enum Lu/aly/av$e;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lu/aly/co;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/aly/av$e;",
        ">;",
        "Lu/aly/co;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/av$e;

.field public static final enum b:Lu/aly/av$e;

.field public static final enum c:Lu/aly/av$e;

.field public static final enum d:Lu/aly/av$e;

.field public static final enum e:Lu/aly/av$e;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lu/aly/av$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic i:[Lu/aly/av$e;


# instance fields
.field private final g:S

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 55
    new-instance v0, Lu/aly/av$e;

    const-string v1, "NAME"

    const-string v2, "name"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lu/aly/av$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/av$e;->a:Lu/aly/av$e;

    .line 56
    new-instance v0, Lu/aly/av$e;

    const-string v1, "PROPERTIES"

    const-string v2, "properties"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5, v2}, Lu/aly/av$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/av$e;->b:Lu/aly/av$e;

    .line 57
    new-instance v0, Lu/aly/av$e;

    const-string v1, "DURATION"

    const-string v2, "duration"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/av$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/av$e;->c:Lu/aly/av$e;

    .line 58
    new-instance v0, Lu/aly/av$e;

    const-string v1, "ACC"

    const-string v2, "acc"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/av$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/av$e;->d:Lu/aly/av$e;

    .line 59
    new-instance v0, Lu/aly/av$e;

    const-string v1, "TS"

    const-string v2, "ts"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/av$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/av$e;->e:Lu/aly/av$e;

    .line 54
    new-array v0, v8, [Lu/aly/av$e;

    sget-object v1, Lu/aly/av$e;->a:Lu/aly/av$e;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/av$e;->b:Lu/aly/av$e;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/av$e;->c:Lu/aly/av$e;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/av$e;->d:Lu/aly/av$e;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/av$e;->e:Lu/aly/av$e;

    aput-object v1, v0, v7

    sput-object v0, Lu/aly/av$e;->i:[Lu/aly/av$e;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/av$e;->f:Ljava/util/Map;

    .line 64
    const-class v0, Lu/aly/av$e;

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

    check-cast v1, Lu/aly/av$e;

    .line 65
    sget-object v2, Lu/aly/av$e;->f:Ljava/util/Map;

    invoke-virtual {v1}, Lu/aly/av$e;->b()Ljava/lang/String;

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

    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 110
    iput-short p3, p0, Lu/aly/av$e;->g:S

    .line 111
    iput-object p4, p0, Lu/aly/av$e;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lu/aly/av$e;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 83
    :pswitch_0
    sget-object p0, Lu/aly/av$e;->e:Lu/aly/av$e;

    return-object p0

    .line 81
    :pswitch_1
    sget-object p0, Lu/aly/av$e;->d:Lu/aly/av$e;

    return-object p0

    .line 79
    :pswitch_2
    sget-object p0, Lu/aly/av$e;->c:Lu/aly/av$e;

    return-object p0

    .line 77
    :pswitch_3
    sget-object p0, Lu/aly/av$e;->b:Lu/aly/av$e;

    return-object p0

    .line 75
    :pswitch_4
    sget-object p0, Lu/aly/av$e;->a:Lu/aly/av$e;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lu/aly/av$e;
    .locals 1

    .line 103
    sget-object v0, Lu/aly/av$e;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/aly/av$e;

    return-object p0
.end method

.method public static b(I)Lu/aly/av$e;
    .locals 3

    .line 94
    invoke-static {p0}, Lu/aly/av$e;->a(I)Lu/aly/av$e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
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

.method public static valueOf(Ljava/lang/String;)Lu/aly/av$e;
    .locals 1

    .line 54
    const-class v0, Lu/aly/av$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/aly/av$e;

    return-object p0
.end method

.method public static values()[Lu/aly/av$e;
    .locals 1

    .line 54
    sget-object v0, Lu/aly/av$e;->i:[Lu/aly/av$e;

    invoke-virtual {v0}, [Lu/aly/av$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/av$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 115
    iget-short v0, p0, Lu/aly/av$e;->g:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lu/aly/av$e;->h:Ljava/lang/String;

    return-object v0
.end method
