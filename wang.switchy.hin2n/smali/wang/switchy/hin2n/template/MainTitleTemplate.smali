.class public Lwang/switchy/hin2n/template/MainTitleTemplate;
.super Lwang/switchy/hin2n/template/BaseTemplate;
.source "MainTitleTemplate.java"


# instance fields
.field private mContainerLayout:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mPageView:Landroid/widget/LinearLayout;

.field private mTitleLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1}, Lwang/switchy/hin2n/template/BaseTemplate;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lwang/switchy/hin2n/template/MainTitleTemplate;->mContext:Landroid/content/Context;

    .line 40
    iget-object p1, p0, Lwang/switchy/hin2n/template/MainTitleTemplate;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0032

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/template/MainTitleTemplate;->mPageView:Landroid/widget/LinearLayout;

    .line 42
    iget-object p1, p0, Lwang/switchy/hin2n/template/MainTitleTemplate;->mPageView:Landroid/widget/LinearLayout;

    const v0, 0x7f0900ad

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/template/MainTitleTemplate;->mTitleLayout:Landroid/widget/RelativeLayout;

    .line 43
    iget-object p1, p0, Lwang/switchy/hin2n/template/MainTitleTemplate;->mPageView:Landroid/widget/LinearLayout;

    const v0, 0x7f090058

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/template/MainTitleTemplate;->mContainerLayout:Landroid/widget/FrameLayout;

    .line 45
    iget-object p1, p0, Lwang/switchy/hin2n/template/MainTitleTemplate;->mPageView:Landroid/widget/LinearLayout;

    const v0, 0x7f090110

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getPageView()Landroid/view/View;
    .locals 1

    .line 59
    iget-object v0, p0, Lwang/switchy/hin2n/template/MainTitleTemplate;->mPageView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 53
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    iget-object v1, p0, Lwang/switchy/hin2n/template/MainTitleTemplate;->mContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
