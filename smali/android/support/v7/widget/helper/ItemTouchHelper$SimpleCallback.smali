.class public abstract Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;
.super Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleCallback"
.end annotation


# instance fields
.field private mDefaultDragDirs:I

.field private mDefaultSwipeDirs:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2199
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;-><init>()V

    .line 2200
    iput p2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    .line 2201
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return-void
.end method


# virtual methods
.method public getDragDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 2247
    iget p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return p1
.end method

.method public getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 2252
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->getDragDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 2253
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->getSwipeDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result p1

    .line 2252
    invoke-static {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public getSwipeDirs(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 2234
    iget p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return p1
.end method

.method public setDefaultDragDirs(I)V
    .locals 0

    .line 2221
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultDragDirs:I

    return-void
.end method

.method public setDefaultSwipeDirs(I)V
    .locals 0

    .line 2211
    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;->mDefaultSwipeDirs:I

    return-void
.end method
