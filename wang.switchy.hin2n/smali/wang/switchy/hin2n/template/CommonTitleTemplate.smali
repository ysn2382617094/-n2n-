.class public Lwang/switchy/hin2n/template/CommonTitleTemplate;
.super Lwang/switchy/hin2n/template/BaseTemplate;
.source "CommonTitleTemplate.java"


# instance fields
.field private mContainerLayout:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field public final mLeftImg:Landroid/widget/ImageView;

.field private mPageView:Landroid/widget/LinearLayout;

.field public final mRightImg:Landroid/widget/ImageView;

.field private mTitleLayout:Landroid/widget/RelativeLayout;

.field private final mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lwang/switchy/hin2n/template/BaseTemplate;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mContext:Landroid/content/Context;

    .line 45
    iget-object p1, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0032

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mPageView:Landroid/widget/LinearLayout;

    .line 47
    iget-object p1, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mPageView:Landroid/widget/LinearLayout;

    const v0, 0x7f0900ad

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mTitleLayout:Landroid/widget/RelativeLayout;

    .line 48
    iget-object p1, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mPageView:Landroid/widget/LinearLayout;

    const v0, 0x7f090058

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mContainerLayout:Landroid/widget/FrameLayout;

    .line 50
    iget-object p1, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mPageView:Landroid/widget/LinearLayout;

    const v0, 0x7f090110

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mTitleText:Landroid/widget/TextView;

    .line 52
    iget-object p1, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mPageView:Landroid/widget/LinearLayout;

    const v0, 0x7f09006e

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mLeftImg:Landroid/widget/ImageView;

    .line 53
    iget-object p1, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mPageView:Landroid/widget/LinearLayout;

    const v0, 0x7f09006f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mRightImg:Landroid/widget/ImageView;

    .line 55
    iget-object p1, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getPageView()Landroid/view/View;
    .locals 1

    .line 73
    iget-object v0, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mPageView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    .line 60
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    iget-object v1, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mContainerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitleText(I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lwang/switchy/hin2n/template/CommonTitleTemplate;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
