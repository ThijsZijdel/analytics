import React from 'react';
import { useRouter } from 'next/router';
import Layout from 'components/layout/Layout';
import WebsiteDetails from 'components/pages/WebsiteDetails';
import useShareToken from 'hooks/useShareToken';

const WrapLayout = ({ hideHeader, children }) => (hideHeader ? children : <Layout>{children}</Layout>);

export default function SharePage() {
  const router = useRouter();
  const { id, preview } = router.query;
  const shareId = id?.[0];
  const shareToken = useShareToken(shareId);
  let hideHeader = preview ? !preview : true;


  if (!shareToken) {
    return null;
  }
 
  return (
    <WrapLayout hideHeader={hideHeader}>
      <WebsiteDetails websiteId={shareToken.id} />
    </WrapLayout>
  );
}
