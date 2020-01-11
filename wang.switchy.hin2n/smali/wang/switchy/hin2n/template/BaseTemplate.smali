.class public abstract Lwang/switchy/hin2n/template/BaseTemplate;
.super Ljava/lang/Object;
.source "BaseTemplate.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lwang/switchy/hin2n/template/BaseTemplate;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract getPageView()Landroid/view/View;
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method
