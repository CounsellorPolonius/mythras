.class public Lu/aly/dm$a;
.super Ljava/lang/Object;
.source "TTupleProtocol.java"

# interfaces
.implements Lu/aly/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/du;)Lu/aly/dg;
    .locals 1

    .line 36
    new-instance v0, Lu/aly/dm;

    invoke-direct {v0, p1}, Lu/aly/dm;-><init>(Lu/aly/du;)V

    return-object v0
.end method
